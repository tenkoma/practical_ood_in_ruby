require 'minitest/autorun'
require_relative './gear'

class GearTest < Minitest::Test
  def test_ratio
    assert_equal(4.7272727272727272, Gear.new(52, 11).ratio)
    assert_equal(1.1111111111111111, Gear.new(30, 27).ratio)
  end
end
