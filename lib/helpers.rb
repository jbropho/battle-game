
def call_attack(input)
  input == 'attack_p1' ?
   @game.attack(@player_one) : @game.attack(@player_two)
end
