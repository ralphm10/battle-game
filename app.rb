require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.game_instance
  end

  get '/test' do
    'testing infrastructure'
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    @game = Game.create_game(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.switch_turns
    erb(:attack)
  end

  post '/attack' do
    @game.attack(@game.opponent_of(@game.current_turn))
    if @game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  get '/game-over' do

    erb(:game_over)
  end

  run! if app_file == $0
end
