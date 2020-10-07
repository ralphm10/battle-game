require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(george, ringo) }
  subject(:finished_game) { described_class.new(dead_player, ringo) }
  let(:george) { double :player, points: 60 }
  let(:ringo) { double :player, points: 60 }
  let(:dead_player) { double :player, points: 0 }

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

  describe '#game_over?' do
    it 'returns false if both players have points' do
      expect(game.game_over?).to be false
    end
    it 'ends the game when a player reaches 0 points' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns a dead player' do
      expect(finished_game.loser).to eq dead_player
    end
  end
end
