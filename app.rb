require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @name_1 = params[:Player1]
    @name_2 = params[:Player2]
    erb :play
  end
  
  run! if app_file == $0

end

