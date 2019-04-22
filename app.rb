require_relative 'config/environment'

class App < Sinatra::Base

  get '/home' do
    erb :home
  end
end
