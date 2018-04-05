require_relative 'attack'
require_relative 'game'

class Player
  attr_accessor :name, :health
  def initialize(name)
    @name = name
    @health = 100
  end

  def receive_attack(attack)
    @health -= attack.damage
  end
end
