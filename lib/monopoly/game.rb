require 'sinatra/base'

class MonopolyGame < Sinatra::Base

  set :views, "#{settings.root}/../../views"
  set :public_folder, "#{settings.root}/../../public"

  get '/' do
    @cards = Board.new.get_top_cards
    erb :index
  end

end

