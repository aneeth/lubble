require 'sinatra/base'
require 'yaml'
require 'erb'

class TestApp < Sinatra::Base
  
  configure do
    config = YAML::load_file(File.join(Dir.pwd, 'config', 'passwd.yml'))
    use Rack::Auth::Basic, "login" do |u, p|
      Digest::SHA256.hexdigest(p) == config[u]
    end
  end

  get '/' do
    erb :index
  end
end
