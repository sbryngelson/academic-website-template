# frozen_string_literal: true

module Sass
  # Contextual information passed to `canonicalize` and `find_file_url`.
  # Not all importers will need this information to resolve loads, but some may find it useful.
  #
  # @see https://sass-lang.com/documentation/js-api/interfaces/canonicalizecontext/
  class CanonicalizeContext
    # @return [String, nil]
    attr_reader :containing_url

    # @return [Boolean]
    attr_reader :from_import

    # @!visibility private
    def initialize(containing_url, from_import)
      @containing_url = containing_url
      @from_import = from_import
    end
  end
end
