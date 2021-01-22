require 'player.rb'
require 'game.rb'

describe "Game" do

  subject(:game) {Game.new}

  it "reduces a player's hit_points after attack" do
    claude = Player.new("Claude")
    expect { game.attack(claude) }.to change{ claude.hit_points }.by(-10)
  end

end
