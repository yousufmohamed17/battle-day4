require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params[:name1])
    $player2 = Player.new(params[:name2])
    session[:attack] = nil
    redirect "/play"
  end

  get "/play" do
    @attack = session[:attack]
    erb(:play)
  end

  post "/attack" do
    session[:attack] = true
    $player2.is_attacked
    redirect "/play"
  end

  run! if app_file == $0
end