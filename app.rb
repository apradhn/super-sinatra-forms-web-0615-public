require 'sinatra/base'

class App < Sinatra::Base
  get '/' do 
    erb :'super_hero'
  end

  get '/teams' do 
    binding.pry
    "hello"
  end

  post '/teams' do
    @team = {movie: params[:team][:name], motto: params[:team][:motto]}

    @heroes = params[:team][:members].collect{|hero, hash| hash}

    erb :'/team'
  end

end
