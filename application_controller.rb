require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/about' do
    erb :about
  end
  
  post '/results' do
    user_input = params[:search_term]
    @book=get_results(user_input) 
    erb :results
  end
  
#   post '/test' do
#     user_input = params[:books]
#     user_books=book_genre(user_input)
#     erb :test
#   end
end


