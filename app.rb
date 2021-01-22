require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:player_one], params[:player_two])
    redirect '/play'
  end

  get '/play' do
    @player_one = $game.player_one
    @player_two = $game.player_two
    erb :play
  end

  get '/attack' do
    @player_one = $game.player_one
    @player_two = $game.player_two
    $game.attack(@player_two)
    erb :attack
  end

  run! if app_file == $0

end
