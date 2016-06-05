require 'sinatra/base'

class MonopolyGame < Sinatra::Base

  set :views, "#{settings.root}/../../views"
  set :public_folder, "#{settings.root}/../../public"

  enable :sessions

  get '/' do
    board = Board.new
    session[:board] = board
    @top_cards, @sides_cards, @bottom_cards = board.get_cards
    erb :index
  end

  post '/roll' do
    board = session[:board]
    @top_cards, @sides_cards, @bottom_cards = board.get_cards
    new_possition = board.players.first.position + Dice.roll
    new_possition -= 40 if new_possition > 40
    board.set_position(player: board.players.first, position: new_possition)
    session[:board] = board
    erb :index
  end

end
