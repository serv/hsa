require "us_income_tax"

module Hsa
  class CalculationResult
    attr_accessor :year, :income_tax_result, :hsa_contribution_amount, :hsa_type, :brackets, :total_tax, :net_income

    def initialize(year, gross_income, type, hsa_contribution_amount, hsa_type)
      @year = year
      @gross_income = gross_income
      @type = type
      @hsa_contribution_amount = hsa_contribution_amount
      @hsa_type = hsa_type

      @income_tax_result = ::USIncomeTax::Calculator.calculate(@year, @gross_income, @type)

      loaded_static_max_contribution_data = ::Hsa::HsaHsaMaxContributionDataLoader.load

      # TODO: Reference: https://github.com/serv/us_income_tax/blob/master/lib/us_income_tax/calculation_result.rb
      # TODO: Load HSABrackets
    end
  end
end
