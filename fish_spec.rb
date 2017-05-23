require "minitest/autorun"
require "minitest/rg"

require_relative "fish"
# require_relative "river"
# require_relative "bear"

class TestFish < MiniTest::Test
  def setup()
    @fish = Fish.new("Frankie")
  end

  def test_fish_name()
    assert_equal("Frankie", @fish.fish_name)
  end

end