require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :turn

  DEFAULT_ATTACK = 10

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @turn = 1
  end

  def attack(player)
    player.receive_damage
  end

  def change_turn
    @turn += 1
  end

end