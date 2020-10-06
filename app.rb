require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/test' do
    'testing infrastructure'
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player_1
    @player2 = $player_2
    erb(:play)
  end

  get '/attack' do
    @player1 = $player_1
    @player2 = $player_2
    Game.new.attack(@player2)
    erb(:attack)
  end

  run! if app_file == $0
end
