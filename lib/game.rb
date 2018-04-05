require_relative 'attack'

class Game

  def attack(player)
    player.receieve_attack(Attack.new)
  end
end
