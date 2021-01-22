require 'player.rb'

describe "Player" do

  subject(:claude) { Player.new('Claude') }
  subject(:pete) { Player.new('Pete') }


  it "stores the player name" do
    expect(claude.name).to eq("Claude")
  end

  it "has hit points" do
    expect(claude.hit_points).to eq(Player::HIT_POINTS_START)
  end

  it "receives damage" do
    hit = 10
    expect { claude.receive_damage }.to change{ claude.hit_points }.by(- hit)
  end

end
