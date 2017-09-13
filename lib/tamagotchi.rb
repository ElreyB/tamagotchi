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

  def set_happiness_level
    if @clock.clock % 4 == 0
      @happiness_level -= 1
    end
  end

  def set_awake(time)
    if (time >= 10) && (time < 22)
      @awake = true
    elsif (time < 10) || (time >= 22)
      @awake = false
    end
    @awake
  end

  def feed_tama
    @food_level += 1
  end  

  def to_s
    "Your tama, #{@name}, levels are food: #{@food_level} and happiness #{@happiness_level}, and they are awake: #{@awake}"
  end
end
