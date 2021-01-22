require 'player.rb'

describe "Player" do

  it "stores the player name" do
    player = Player.new("Claude")
    expect(player.name).to eq("Claude")
  end

end
