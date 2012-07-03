class Player
  def initialize
    @health = 20  
  end
  
  def play_turn(warrior)
    if warrior.feel.enemy?
       warrior.attack!
    else
      if warrior.health < 20 && !taking_damage?(warrior)
        warrior.rest!
      else
        warrior.walk!
      end
    end
    @health = warrior.health
  end
  
  def taking_damage?(warrior)
    warrior.health < @health
  end
  
end