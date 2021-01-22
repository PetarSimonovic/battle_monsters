require 'player.rb'
require 'game.rb'

describe "Game" do

  # subject(:game) {Game.new("claude", "pete")}


  it "reduces a player's hit_points after attack" do
    game = Game.new("claude", "pete")
    expect { game.attack(game.player_one) }.to change{ game.player_one.hit_points }.by(-10)
  end

end
