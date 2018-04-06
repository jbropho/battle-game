require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/helpers'

class MyApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = Player.new(params[:player_one])
    @player2 = Player.new(params[:player_two])
    session[:game] = Game.new(@player1, @player2)
    redirect '/play'
  end

  post '/attack' do
    session[:message] = params[:playerAction]
    @game = session[:game]
    @player_one = @game.player_one
    @player_two = @game.player_two
    call_attack(params[:playerMove])
    redirect '/play'
  end

  get '/play' do
    @message = session[:message]
    @game = session[:game]
    @player_one = @game.player_one
    @player_two = @game.player_two
    erb :play
  end
end
