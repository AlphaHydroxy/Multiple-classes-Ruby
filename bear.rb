class Bear
  def initialize(bear_name, stomach)
    @bear_name = bear_name
    @stomach = []
  end

  def bear_name()
    return @bear_name
  end

  def bears_stomach()
    return @stomach.count()
  end

  def add_fish(fish)
    @stomach.push(fish)
  end






end