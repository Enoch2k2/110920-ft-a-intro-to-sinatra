require './config/environment'

class ApplicationController < Sinatra::Base
  # application controller is used for configuration

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/hello" do
    erb :hello
  end

end
