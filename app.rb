require 'sinatra/base'
require './lib/player'
require './lib/game'

class MyApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_one] = Player.new(params[:player_one])
    session[:player_two] = Player.new(params[:player_two])
    session[:game] = Game.new('place', 'holder')
    redirect '/play'
  end

  post '/attack' do
    session[:message] = params[:playerAction]
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    $game = session[:game]
    eval(params[:playerMove])
    redirect '/play'
  end

  get '/play' do
    @message = session[:message]
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    @game = session[:game]
    erb :play
  end
end
