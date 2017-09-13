require('pry')

class Tamagotchi
  attr_accessor(:name, :food_level, :happiness_level, :awake)
  def initialize(name)
    @name = name
    @food_level = 10
    @happiness_level = 10
    @awake = true
  end

  def is_alive?
    @food_level > 0
  end
  #
  # def set_food_level

end
