class RobotWorld < Sinatra::Base
  set :root, File.join(File.dirname(__File__), '..')

  get '/' do
    'hello, world!'
  end
end
