require "minitest/autorun"
require "minitest/rg"

require_relative "river"
require_relative "bear"
require_relative "fish"

class TestRiver < MiniTest::Test
  def setup()
    fish = []
    @fish = Fish.new("Frankie")
    @fish1 = Fish.new("fish1")
    @fish2 = Fish.new("fish2")
    fish.push(@fish, @fish1, @fish2);
    @river = River.new("Thames", fish)
    stomach = []
    @bear = Bear.new("Yogi", stomach)
  end

  def test_name()
    assert_equal("Thames", @river.river_name())
  end

  def test_amount_of_fish()
    assert_equal(3, @river.amount_of_fish())
  end

  def test_fish_eaten()
    @fish.fish_name()
    @river.remove_fish_from_river(@fish)
    assert_equal(2, @river.amount_of_fish)
  end

  def test_bear_eats()
    @bear.add_fish(@fish1)
    assert_equal(1, @bear.bears_stomach())
    @river.remove_fish_from_river(@fish)
    assert_equal(2, @river.amount_of_fish())
  end





end