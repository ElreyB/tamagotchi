require('pry')

class Tamagotchi < Clock
  attr_accessor(:name, :food_level, :happiness_level, :awake)
  attr_reader(:clock)
  def initialize(name)
    @name = name
    @food_level = 10
    @happiness_level = 10
    @awake = true
    @clock = Clock.new
  end

  def is_alive?
    @food_level > 0
  end

  def set_food_level
    if @clock.clock % 3 == 0
      @food_level -= 1
    end
  end
end
