require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $game = Game.new(params[:name1], params[:name2])
    session[:attack] = nil
    redirect "/play"
  end

  get "/play" do
    @attack = session[:attack]
    erb(:play)
  end

  post "/attack" do
    session[:attack] = true
    $game.attack($game.next_turn)
    redirect "/play"
  end

  post "/switch" do
    $game.change_turn
    session[:attack] = nil
    redirect "/play"
  end

  run! if app_file == $0
end