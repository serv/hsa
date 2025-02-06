module Hsa
  class Calculator
    def self.calculate(year, gross_income, type, hsa_contribution_amount, hsa_type)
      calculation_result = CalculationResult.new(year, gross_income, type, hsa_contribution_amount, hsa_type)
      # calculation_result.calculate
      # calculation_result
    end
  end
end
