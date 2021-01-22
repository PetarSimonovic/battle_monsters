require 'sinatra/base'
require './lib/player'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one
    @player_two = $player_two
    erb :play
  end

  get '/attack' do
    @player_one = $player_one
    @player_two = $player_two
    Game.new.attack($player_two)
    erb :attack
  end

  run! if app_file == $0

end
