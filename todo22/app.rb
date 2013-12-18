require 'bundler'
Bundler.require


class App < Sinatra::Application

  get '/' do
    today = Time.now.strftime("%m/%d/%Y")
    today == "12/30/1989" ? @answer = "YES" : @answer = "NO"
    erb :index
  end
 
end



