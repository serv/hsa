module Hsa
  class Calculator
    def self.calculate(year, gross_income, type, hsa_contribution_amount, hsa_type)
      CalculationResult.new(year, gross_income, type, hsa_contribution_amount, hsa_type)
      # TODO: add calculate
      # calculation_result.calculate
      # calculation_result
    end
  end
end
