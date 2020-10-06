require 'player'

describe Player do
  subject(:george) { Player.new('George') }
  subject(:ringo) { Player.new('Ringo') }

  describe '#name' do
    it 'returns its name' do
      expect(george.name).to eq 'George'
    end
  end
  describe '#hit_points' do
    it 'returns hit points' do
      expect(george.points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  describe '#attack' do
    it 'attacks a player' do
      expect(george).to receive(:receive_attack)
      ringo.attack(george)
    end
  end
  describe '#receive_attack' do
    it 'reduces hit points by 10' do
      expect { george.receive_attack }.to change { george.points }.by(-10)
    end
  end
end
