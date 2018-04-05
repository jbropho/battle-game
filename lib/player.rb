require_relative 'attack'
require_relative 'game'

class Player
  attr_accessor :name, :health
  def initialize(name)
    @name = name
    @health = 100
  end

  def attack(player)
    $game.attack(player)
  end

  def receieve_attack(attack)
    @health -= attack.damage
  end
end
