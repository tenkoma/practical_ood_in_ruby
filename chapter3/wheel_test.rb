require 'minitest/autorun'
require_relative './wheel'

class WheelTest < MiniTest::Test
  def test_circumference
    wheel = Wheel.new(26, 1.5)
    assert_equal(91.106186954104, wheel.circumference)
  end
end
