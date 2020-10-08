class Game
  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
  end

  def attack(player)
    player.receive_attack
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
    if the_player == player1
      @player2
    else
      @player1
    end
  end

  def game_over?
    @player1.points.zero? || @player2.points.zero?
  end

  def loser
    if @player1.points.zero?
      @player1
    else
      @player2
    end
  end

  def self.create_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.game_instance
    @game
  end
end
