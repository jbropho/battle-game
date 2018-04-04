require 'player'
require 'pry'

describe Player do
  describe '.tested' do
    subject(:player) { described_class.new('john')}
    it 'returns a player name' do
      expect(player.tested).to eq 'john'
    end
  end
end
