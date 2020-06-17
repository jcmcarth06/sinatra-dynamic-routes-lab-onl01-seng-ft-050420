require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    params[:number].to_i
    (number * number).to_s
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    string = []
    number.times do 
      string << params[:phrase]
    end
    string
  end



end
