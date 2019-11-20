require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name].reverse
    "#{name}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    number = number * number
    "#{number}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    string = params[:phrase] * number
    "#{string}"
  end
end
