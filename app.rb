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
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one.name
    @player_two = $player_two.name
    @player_two_HP = $player_two.hit_points
    erb :play
  end

  get '/attack' do
    @player_one = $player_one.name
    @player_two = $player_two.name
    $player_two.hit
    erb :attack
  end

  run! if app_file == $0

end
