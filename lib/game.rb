require './lib/player'
class Game

  attr_reader :player_one
  attr_reader :player_two

  def initialize(player_one, player_two)
    @player_one = Player.new(player_one)
    @player_two = Player.new(player_two)
  end


  def attack(player)
    player.receive_damage
  end

end
