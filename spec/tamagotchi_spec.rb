require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  let(:tama) { Tamagotchi.new("puggle") }

  describe ('#initialize') do
    it ("set name and life levels of a new Tamagotchi") do
    expect(tama.name()).to(eq("puggle"))
    expect(tama.food_level()).to(eq(10))
    expect(tama.happiness_level()).to(eq(10))
    expect(tama.awake()).to(eq(true))
    end
  end

  describe("#is_alive?") do
    it("is alive if the food level is above 0") do
      expect(tama.is_alive?()).to(eq(true))
    end

    it ("is dead if the food level is 0") do
      10.times{tama.set_food_level()}
      expect(tama.is_alive?()).to(eq(false))
    end
  end

  describe('#set_food_level') do
    it ("changes food level by 1") do
      expect{tama.set_food_level}.to change{tama.food_level}.from(10).to(9)
    end
  end
end
