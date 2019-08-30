require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :'reverse'
  end

  post '/reverse' do
    #Instance variables are ONLY passed from the controller method where they are created to the view that is rendered, 
    #not between controller methods.
    original_string = params["string"]
    @reversed_string = original_string.reverse
    puts @reversed_string
    erb :'/reversed'
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
 
    erb :'/friends'
  end
end