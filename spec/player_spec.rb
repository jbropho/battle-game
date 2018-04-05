require 'player'
require 'pry'

describe Player do
  subject(:player) { described_class.new('Xaero') }

  describe '.receieve_attack' do
    it 'reduces player health' do
      attack = double(:damage => 10)
      expect{ player.receive_attack(attack)}.to change{player.health}.from(100).to(90)
    end
  end
end
