require 'game'
require 'player'

describe Game do
  let(:george) { double :player }
  let(:ringo) { double :player }

  describe '#attack' do
    it 'attacks a player' do
      expect(george).to receive(:receive_attack)
      subject.attack(george)
    end
  end
end
