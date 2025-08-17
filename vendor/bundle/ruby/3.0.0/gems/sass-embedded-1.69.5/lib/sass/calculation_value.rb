# frozen_string_literal: true

module Sass
  # The type of values that can be arguments to a SassCalculation.
  #
  # @see https://sass-lang.com/documentation/js-api/types/calculationvalue/
  module CalculationValue
    # @return [CalculationValue]
    # @raise [ScriptError]
    def assert_calculation_value(_name = nil)
      self
    end
  end
end

require_relative 'calculation_value/calculation_operation'
