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
    expect { claude.receive_damage }.to change{ claude.hit_points }.by(-Player::HIT)
  end

  it "reduces hit_points after attack" do
    expect { pete.attack(claude) }.to change{ claude.hit_points }.by(-Player::HIT)
  end

end
