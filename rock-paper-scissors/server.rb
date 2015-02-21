require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  GAME = Game.new

  get '/' do
    erb :name
  end

  post '/play' do
    @name = params[:name]
    # me = Player.new(@name)
    # GAME.ad_player me
    erb :play
  end

  post '/result' do
    "Sorry Gabe, you lose"
  end

  post '/chose_pick' do
    pick = params[:pick]
    GAME.player_two.pick pick
  end

  # @winner_name = GAME.winer.name

  # start the server if ruby file executed directly
  run! if app_file == $0
end


