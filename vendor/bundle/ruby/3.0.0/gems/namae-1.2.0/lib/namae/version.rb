module Namae
  module Version
    MAJOR = 1
    MINOR = 2
    PATCH = 0
    BUILD = nil

    STRING = [MAJOR, MINOR, PATCH, BUILD].compact.join('.').freeze
  end
end
