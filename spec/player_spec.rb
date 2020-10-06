require 'player'

describe Player do
  subject(:george) { Player.new('George')}

  describe '#name' do
    it 'returns its name' do
      expect(george.name).to eq 'George'
    end
  end
end
