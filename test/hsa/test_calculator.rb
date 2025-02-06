require "test_helper"

class TestHsaCalculator < Minitest::Test
  def test_initialize
    calculation_result = ::Hsa::Calculator.calculate(2024, 777_777, :single, 0, nil)

    assert calculation_result.income_tax_result.year === 2024
  end
end
