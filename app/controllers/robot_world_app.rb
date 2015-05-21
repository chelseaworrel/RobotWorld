class RobotWorldApp < Sinatra::Base
  get '/' do
    @robots = RobotWorld.all
    erb :directory
  end

  get '/profile/new' do
    erb :new
  end

  post '/profile/new' do
    RobotWorld.create(params[:robot])
    redirect '/'
  end

  get '/profile/:id' do |id|
    @robots = RobotWorld.find(id.to_i)
    erb :profile
  end

  get '/profile/:id/edit' do |id|
    @robots = RobotWorld.find(id.to_i)
    erb :edit
  end

  put '/profile/:id' do |id|
    RobotWorld.update(id.to_i, params[:robot])
    redirect "/profile/#{id}"
  end

  delete '/profile/:id' do |id|
    RobotWorld.delete(id.to_i)
    redirect '/'
  end

end
