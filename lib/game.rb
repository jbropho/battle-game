require_relative 'attack'

class Game
  attr_accessor :player_one, :player_two
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def attack(player)
    player.receive_attack(Attack.new)
  end
end
