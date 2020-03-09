require 'sinatra/base'

class Bookmark < Sinatra::Base 
  get '/' do
    # "Bookmark Manager"
      erb :index
  end
  
  run! if app_file == $0
end 