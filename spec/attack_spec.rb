require 'attack'

describe Attack do
  describe '.new' do
    it 'initialises with 10 damage points by default' do
      expect(subject.damage).to eq 10
    end
  end
end
