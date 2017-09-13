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

  describe('set_happiness_level') do
    it ("changes happiness level by 1") do
      expect{tama.set_happiness_level}.to change{tama.happiness_level}.from(10).to(9)
    end
  end

  describe('set_awake') do
    it ("returns whether tama is awake") do
      expect(tama.set_awake(12)).to(eq(true))
      expect(tama.set_awake(23)).to(eq(false))
    end
  end

  describe('feed_tama') do
    it ("increases food_level by 1 when select food") do
      tama.set_food_level
      expect{tama.feed_tama}.to change{tama.food_level}.from(9).to(10)
    end
  end

  describe('pet_tama') do
    it ("increases happiness_level by 1 when select pet") do
      tama.set_happiness_level
      expect{tama.pet_tama}.to change{tama.happiness_level}.from(9).to(10)
    end
  end

  describe('light_switch') do
    it ("switch light between on and off") do
      expect{tama.light_switch}.to change{tama.light}.from(true).to(false)
      expect{tama.light_switch}.to change{tama.light}.from(false).to(true)
    end
  end

  describe('#to_s') do
    it ("will return user friendly string with current tama status") do
      expect(tama.to_s).to(eq("Your tama, puggle, levels are food: 10 and happiness 10, and they are awake: true"))
    end
  end

end
