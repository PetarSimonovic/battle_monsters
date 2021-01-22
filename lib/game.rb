require './lib/player'
class Game

  attr_reader :player_one
  attr_reader :player_two
  attr_reader :attacker
  attr_reader :defender

  def initialize(player_one, player_two)
    @player_one = Player.new(player_one)
    @player_two = Player.new(player_two)
    @attacker = @player_one
    @defender = @player_two
  end


  def attack(player)
    player.receive_damage
  end

  def switch_players
    if @attacker == @player_one
      @attacker = @player_two
      @defender = @player_one
    else
      @attacker = @player_one
      @defender = @player_two
    end
  end

end
