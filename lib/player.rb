
class Player

  attr_reader :name
  attr_reader :hit_points

  HIT_POINTS = 60
  HIT = 10

  def initialize(name)
    @name = name
    @hit_points = HIT_POINTS
  end

  def hit
    @hit_points -= HIT
  end

end
