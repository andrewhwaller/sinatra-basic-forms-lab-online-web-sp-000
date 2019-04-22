require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/create_puppy' do
    new_puppy = Puppy.new
    new_puppy.name = params[:name]
    new_puppy.breed = params[:breed]
    new_puppy.months_old = params[:age]
    erb :display_puppy
  end
end
