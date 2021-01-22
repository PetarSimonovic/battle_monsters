
class Player

  attr_reader :name
  attr_reader :hit_points
  attr_reader :hit
  attr_reader :attacker 

  HIT_POINTS_START = 60
  HIT = 10

  def initialize(name)
    @name = name
    @hit_points = HIT_POINTS_START
    @hit = HIT
    @attacker = true
  end

  def receive_damage
    @hit_points -= hit
  end

end
