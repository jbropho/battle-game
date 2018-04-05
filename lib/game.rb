require_relative 'attack'

class Game
  attr_accessor :player_one, :player_two
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @counter = 0
  end

  def attack(player)
    return false unless correct_player?(player)
    player.receive_attack(Attack.new)
    increment_counter
  end

  private
  def correct_player?(attacked)
    turn_to_move != attacked
  end

  def turn_to_move
    @counter % 2 == 0 ? @player_one : @player_two
  end

  def increment_counter
    @counter += 1
  end
end
