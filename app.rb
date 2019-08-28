require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    puts params
    original_string = params[:string]
    @reversed_string = original_string.reverse

    erb :reversed
  end

  get '/' do
    @user = "Ian"

    erb :index
  end

  get '/profile' do
    erb :profile
  end


  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end

end