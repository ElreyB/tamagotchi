require('rspec')
require('clock')

describe Clock do
  let(:clock) { Clock.new() }

  describe '#initialize' do
    it 'has a readable clock' do
      expect(clock.clock).to eq 12
    end
  end

  describe('#tick_tock') do
    it ("changes clock by 1") do
      expect{clock.tick_tock}.to change{clock.clock}.from(12).to(13)
    end

    it 'resets clock to 0' do
      12.times{clock.tick_tock}
      expect(clock.clock).to eq 0
    end
  end
end
