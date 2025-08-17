# frozen_string_literal: true

module Sass
  class Embedded
    # The {Dispatcher} class.
    #
    # It dispatches messages between mutliple instances of {Host} and a single {Connection} to the compiler.
    class Dispatcher
      def initialize
        @id = 1
        @observers = {}
        @mutex = Mutex.new
        @connection = Connection.new(self)
      end

      def subscribe(observer)
        @mutex.synchronize do
          raise Errno::EBUSY if @id == 0xffffffff

          id = @id
          @id = id.next
          @observers[id] = observer
          id
        end
      end

      def unsubscribe(id)
        @mutex.synchronize do
          @observers.delete(id)

          return unless @observers.empty?

          if @id == 0xffffffff
            Thread.new do
              close
            end
          else
            @id = 1
          end
        end
      end

      def connect(host)
        Channel.new(self, host)
      end

      def close
        @connection.close
      end

      def closed?
        @connection.closed?
      end

      def error(error)
        observers = @mutex.synchronize do
          @id = 0xffffffff
          @observers.values
        end

        if observers.empty?
          close
        else
          observers.each do |observer|
            observer.error(error)
          end
        end
      end

      def receive_proto(id, proto)
        case id
        when 1...0xffffffff
          @mutex.synchronize { @observers[id] }.receive_proto(proto)
        when 0
          outbound_message = EmbeddedProtocol::OutboundMessage.decode(proto)
          oneof = outbound_message.message
          message = outbound_message.public_send(oneof)
          @mutex.synchronize { @observers[message.id] }.public_send(oneof, message)
        when 0xffffffff
          outbound_message = EmbeddedProtocol::OutboundMessage.decode(proto)
          oneof = outbound_message.message
          message = outbound_message.public_send(oneof)
          raise Errno::EPROTO, message.message
        else
          raise Errno::EPROTO
        end
      end

      def send_proto(...)
        @connection.write(...)
      end

      # The {Channel} between {Dispatcher} and {Host}.
      class Channel
        attr_reader :id

        def initialize(dispatcher, host)
          @dispatcher = dispatcher
          @id = @dispatcher.subscribe(host)
        end

        def disconnect
          @dispatcher.unsubscribe(id)
        end

        def error(...)
          Thread.new do
            @dispatcher.error(...)
          end
        end

        def send_proto(...)
          @dispatcher.send_proto(...)
        end
      end

      private_constant :Channel
    end

    private_constant :Dispatcher
  end
end
