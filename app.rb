require 'sinatra/base'
require './lib/player'

class MyApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_one] = Player.new(params[:player_one])
    session[:player_two] = Player.new(params[:player_two])
    redirect '/play'
  end

  post '/attack' do
    session[:message] = params[:playerAction]
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    eval(params[:playerMove])
    redirect '/play'
  end

  get '/play' do
    @message = session[:message]
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    erb :play
  end
end
