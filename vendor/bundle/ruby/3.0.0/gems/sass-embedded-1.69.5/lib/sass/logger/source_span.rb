# frozen_string_literal: true

module Sass
  module Logger
    # A span of text within a source file.
    #
    # @see https://sass-lang.com/documentation/js-api/interfaces/sourcespan/
    class SourceSpan
      # @return [SourceLocation]
      attr_reader :start, :end

      # @return [String]
      attr_reader :text

      # @return [String, nil]
      attr_reader :url, :context

      # @!visibility private
      def initialize(start, end_, text, url, context)
        @start = start
        @end = end_
        @text = text
        @url = url
        @context = context
      end
    end
  end
end
