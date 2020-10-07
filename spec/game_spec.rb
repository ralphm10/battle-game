require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(george, ringo) }
  let(:george) { double :player }
  let(:ringo) { double :player }

  describe '#player1' do
    it 'accepts first player' do
      expect(game.player1).to eq george
    end
  end

  describe '#player2' do
    it 'accepts second player' do
      expect(game.player2).to eq ringo
    end
  end

  describe '#attack' do
    it 'attacks a player' do
      expect(george).to receive(:receive_attack)
      subject.attack(george)
    end
  end

  describe '#current_turn' do
    it 'starts with player 1' do
      expect(game.current_turn).to eq george
    end
  end

  describe '#switch turn' do
    it 'switches turns' do
      game.switch_turns
      expect(game.current_turn).to eq ringo
    end
  end
end
