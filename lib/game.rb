require_relative 'attack'

class Game
  attr_reader :player_one, :player_two, :messages
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @counter = 0
  end

  def attack(player)
    return false unless correct_player?(player)
    player.receive_attack(Attack.new)
    increment_counter
    check_for_win
  end

  private

  def check_for_win
    return false unless game_over?
    print_winner
  end

  def game_over?
     @player_one.health == 0 || @player_two.health == 0
  end

  def print_winner
     @messages = @player_one.health == 0 ?
     "#{@player_two.name} wins!" : "#{@player_one.name} wins!"
  end

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
