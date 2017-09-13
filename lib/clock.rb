class Clock
  attr_accessor(:clock)

  def initialize
    @clock = 12
  end

  def tick_tock
    if @clock == 23
      @clock = 0
    else
      @clock += 1
    end
  end
end
