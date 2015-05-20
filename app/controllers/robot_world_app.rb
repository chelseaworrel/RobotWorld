class RobotWorldApp < Sinatra::Base
  get '/' do
    @robots = RobotWorld.all
    erb :directory
  end

  get '/profile/new' do
    erb :new
  end

  post '/profile' do
    RobotWorld.create(params[:robot])
    redirect "/profile/#{id}"
  end

  get '/profile/:id' do |id|
    @robots = RobotWorld.find(id.to_i)
    erb :profile
  end

end
