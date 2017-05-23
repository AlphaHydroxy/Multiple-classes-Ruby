require "minitest/autorun"
require "minitest/rg"

require_relative "bear"
require_relative "river"
# require_relative "fish"

class TestBear < MiniTest::Test
  def setup()
    stomach = []
    @bear = Bear.new("Yogi", stomach)
  end

  def test_name()
    assert_equal("Yogi", @bear.bear_name())
  end

  def test_bears_stomach()
    assert_equal(0, @bear.bears_stomach())
  end

 def test_bear_has_a_fish()
    @bear.add_fish(@fish1)
    assert_equal(1, @bear.bears_stomach())
 end
end