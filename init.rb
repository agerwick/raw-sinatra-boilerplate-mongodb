require 'sinatra/base'
require 'haml'
require 'mongoid'

class App < Sinatra::Base
  set :sessions, true
  set :logging, true if settings.environment != :test
  set :views, "app/views"
  Mongoid.load!("mongoid.yml") if settings.environment != :test
end

# Load all application files.
Dir["app/**/*.rb"].each do |file|
  require_relative file
end

# Load all libraries
Dir["lib/**/*.rb"].each do |file|
  require_relative file
end

# Load all helpers
class App
  helpers do
    include AppHelpers
  end
end
