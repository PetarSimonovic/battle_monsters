require 'player.rb'
require 'game.rb'

describe "Game" do


  context 'when first created' do
    let(:player_one_name) { "Pete" }
    let(:player_two_name) { "Hugh" }
    let(:game) { Game.new(player_one_name, player_two_name) }

    describe '#player_one' do
      it 'returns player object' do
        expect(game.player_one).to be_an_instance_of(Player)
      end
      it 'returns a player object with the right name' do
        expect(game.player_one.name).to eq player_one_name
      end
    end

    describe '#player_two' do
      it 'returns player object' do
        expect(game.player_two).to be_an_instance_of(Player)
      end
      it 'returns a player object with the right name' do
        expect(game.player_two.name).to eq player_two_name
      end
    end

  end

  it "reduces a player's hit_points after attack" do
    game = Game.new("claude", "pete")
    expect { game.attack(game.player_one) }.to change{ game.player_one.hit_points }.by(-10)
  end

end
