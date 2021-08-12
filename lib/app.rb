require 'sinatra/base'
require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect "/play"
  end

  get "/play" do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb(:play)
  end

  run! if app_file == $0
end