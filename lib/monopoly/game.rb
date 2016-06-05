require 'sinatra/base'

class MonopolyGame < Sinatra::Base

  set :views, "#{settings.root}/../../views"
  set :public_folder, "#{settings.root}/../../public"

  get '/' do
    @top_cards, @sides_cards, @bottom_cards = Board.new.get_cards
    erb :index
  end

end
