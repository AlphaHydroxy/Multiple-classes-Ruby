class River
  def initialize(river_name, fish)
    @river_name = river_name
    @fish = fish
  end

  def river_name()
    return @river_name
  end

  def amount_of_fish()
    return @fish.count
  end

  def remove_fish_from_river(fish)
    for x in @fish
      if fish.fish_name == x.fish_name
        @fish.delete(x)
      end
    end
  end








end