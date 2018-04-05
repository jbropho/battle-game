require_relative 'attack'

class Player
  attr_accessor :name, :health
  def initialize(name)
    @name = name
    @health = 100
  end

  def attack(player)
    player.receieve_attack(Attack.new)
  end

  def receieve_attack(attack)
    @health -= attack.damage
  end
end
