# frozen_string_literal: true

require 'open3'

require_relative '../../../ext/sass/cli'

module Sass
  class Embedded
    # The stdio based {Connection} between the {Dispatcher} and the compiler.
    #
    # It runs the `sass --embedded` command.
    class Connection
      def initialize(dispatcher)
        @mutex = Mutex.new
        @stdin, stdout, stderr, @wait_thread = begin
          Open3.popen3(*CLI::COMMAND, '--embedded', chdir: __dir__)
        rescue Errno::ENOENT
          require_relative '../elf'

          raise if ELF::INTERPRETER.nil?

          Open3.popen3(ELF::INTERPRETER, *CLI::COMMAND, '--embedded', chdir: __dir__)
        end
        @stdin.binmode

        Thread.new do
          stdout.binmode
          loop do
            length = Varint.read(stdout)
            id = Varint.read(stdout)
            proto = stdout.read(length - Varint.length(id))
            dispatcher.receive_proto(id, proto)
          rescue IOError, Errno::EBADF, Errno::EPROTO => e
            dispatcher.error(e)
            break
          end
          stdout.close
        end

        Thread.new do
          loop do
            warn(stderr.readline, uplevel: 1)
          rescue IOError, Errno::EBADF
            break
          end
          stderr.close
        end
      end

      def close
        @stdin.close
        @wait_thread.join
      end

      def closed?
        @stdin.closed? && !@wait_thread.alive?
      end

      def write(id, proto)
        buffer = []
        Varint.write(buffer, Varint.length(id) + proto.length)
        Varint.write(buffer, id)
        @mutex.synchronize do
          @stdin.write(buffer.pack('C*'), proto)
        end
      end
    end

    private_constant :Connection
  end
end
