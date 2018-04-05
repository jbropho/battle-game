require_relative 'attack'

class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def attack(player)
    player.receieve_attack(Attack.new)
  end
end
