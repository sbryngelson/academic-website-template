# frozen_string_literal: true

module Sass
  class Embedded
    class Host
      # The {LoggerRegistry} class.
      #
      # It stores logger and handles log events.
      class LoggerRegistry
        def initialize(logger)
          logger = Structifier.to_struct(logger, :debug, :warn)

          if logger.respond_to?(:debug)
            define_singleton_method(:debug) do |event|
              logger.debug(event.message,
                           span: Protofier.from_proto_source_span(event.span))
            end
          end

          if logger.respond_to?(:warn) # rubocop:disable Style/GuardClause
            define_singleton_method(:warn) do |event|
              logger.warn(event.message,
                          deprecation: event.type == :DEPRECATION_WARNING,
                          span: Protofier.from_proto_source_span(event.span),
                          stack: event.stack_trace)
            end
          end
        end

        def log(event)
          case event.type
          when :DEBUG
            debug(event)
          when :DEPRECATION_WARNING, :WARNING
            warn(event)
          end
        end

        private

        def debug(event)
          Kernel.warn(event.formatted)
        end

        def warn(event)
          Kernel.warn(event.formatted)
        end
      end

      private_constant :LoggerRegistry
    end
  end
end
