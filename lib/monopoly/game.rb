require 'sinatra/base'

class MonopolyGame < Sinatra::Base

  get '/' do
    'Drawing monopoly table'
  end

end