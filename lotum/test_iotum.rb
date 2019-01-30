require 'minitest/autorun'
require 'minitest/pride'
require './iotum.rb'

class TestRobot < MiniTest::Test

  def test_foobar_number
    expected_result = 51
    actual_result = count_even(100)
    assert_equal(expected_result, actual_result)
  end

end
