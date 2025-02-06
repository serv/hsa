require "test_helper"

class HsaHsaMaxContributionDataLoader < Minitest::Test
  def test_load
    result = ::Hsa::HsaHsaMaxContributionDataLoader.load
    json = result.to_json

    assert json.is_a?(String)
  end
end
