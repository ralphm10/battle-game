class Player
  attr_reader :name, :points

  DEFAULT_HIT_POINTS = 60

  def initialize(name)
    @name = name
    @points = DEFAULT_HIT_POINTS
  end

  def attack(player)
    player.receive_attack
  end

  def receive_attack
    @points -= 10
  end
end
