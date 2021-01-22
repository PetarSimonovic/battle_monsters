
class Player

  attr_reader :name
  attr_reader :hit_points

  HIT_POINTS_START = 60
  HIT = 10

  def initialize(name)
    @name = name
    @hit_points = HIT_POINTS_START
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= HIT
  end

end
