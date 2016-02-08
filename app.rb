require './lib/match'
require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/set_name' do
    session[:player_name] = params[:player_name]
    redirect '/match'
  end

  get '/match' do
    @name = session[:player_name]
    erb(:match)
  end

  post '/set_selection' do
    session[:player_selection] = params[:player_selection]
    redirect '/see_selected'
  end

  get '/see_selected' do
    $selected_by_player = session[:player_selection]
    $selected_by_ai = Match.new.ai_selection
    @winner = Match.new.declaration_of_winner
    erb(:selected)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end