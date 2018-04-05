require 'game'

describe Game do
  subject(:player_one) { double(:name => 'player_one') }
  subject(:player_two) { double(:name => 'player_two') }
  describe '.new' do
    it 'initialises with 2 new players' do
      expect{described_class.new(player_one, player_two)}.not_to raise_error
    end
  end
end
