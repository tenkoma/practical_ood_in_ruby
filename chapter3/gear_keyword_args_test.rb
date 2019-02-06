require 'minitest/autorun'
require_relative './gear_keyword_args'

class GearKeywordArgsTest < Minitest::Test
  def test_ratio
    assert_equal(4.7272727272727272, GearKeywordArgs.new(
      chainring: 52,
      cog: 11
    ).ratio)
    assert_equal(1.1111111111111111, GearKeywordArgs.new(
      chainring: 30,
      cog: 27
    ).ratio)
  end

  def test_inches
    assert_equal(137.09090909090909, GearKeywordArgs.new(
      chainring: 52,
      cog: 11,
      wheel: Wheel.new(26, 1.5)
    ).gear_inches)
    assert_equal(125.27272727272728, GearKeywordArgs.new(
      chainring: 52,
      cog: 11,
      wheel: Wheel.new(24, 1.25)
    ).gear_inches)
  end
end
