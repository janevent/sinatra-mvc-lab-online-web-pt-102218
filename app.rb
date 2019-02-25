require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input 
  end
  
  post '/piglatinize' do 
    "Hello World"
    @pig_latin = PigLatinizer.new
    #(params[:user_phrase])
    erb :pig_latinize
  end
end