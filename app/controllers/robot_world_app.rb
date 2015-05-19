class RobotWorldApp < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')

  get '/' do
    erb :directory
  end

  get '/profile' do
    erb :profile
  end

end
