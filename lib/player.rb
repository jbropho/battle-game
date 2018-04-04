class Player
  attr_accessor :name, :health
  def initialize(name)
    @name = name
    @health = 100
  end

  def tested
    @name
  end
end
