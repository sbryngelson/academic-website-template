# frozen_string_literal: true

module Sass
  # An exception thrown because a Sass compilation failed.
  class CompileError < StandardError
    # @return [String, nil]
    attr_reader :sass_stack

    # @return [Logger::SourceSpan, nil]
    attr_reader :span

    # @return [Array<String>]
    attr_reader :loaded_urls

    # @!visibility private
    def initialize(message, full_message, sass_stack, span, loaded_urls)
      super(message)
      @full_message = full_message
      @sass_stack = sass_stack
      @span = span
      @loaded_urls = loaded_urls
    end

    # @return [String]
    def full_message(...)
      return super(...) if @full_message.nil?

      @full_message = +@full_message
    end
  end
end
