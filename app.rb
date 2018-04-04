require 'sinatra/base'

class MyApp < Sinatra::Base
  set :sessions, true

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    session[:p1_health] = 100
    session[:p2_health] = 100
    redirect '/play'
  end

  post '/attack' do
    session[:message] = params[:playerAction]
    redirect '/play'
  end

  get '/play' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    @p1_health = session[:p1_health]
    @p2_health = session[:p2_health]
    @message = session[:message]
    erb :play
  end
end
