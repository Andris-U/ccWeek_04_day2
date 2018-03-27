require 'sinatra'
require 'sinatra/contrib/all'
require_relative 'models/game'

get '/' do
  erb :home
end

get '/play' do
  erb :play
end

post '/play' do
  @game = Game.new params[:option]
  @game.computer_pick
  @game.compare
  erb :result
end
