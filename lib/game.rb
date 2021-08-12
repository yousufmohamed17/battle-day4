class Game
  attr_reader :player_1, :player_2

  DEFAULT_ATTACK = 10

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
  end

  def attack(player)
    player.receive_damage
  end

end