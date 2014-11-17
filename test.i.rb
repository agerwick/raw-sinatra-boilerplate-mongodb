# for loading irb in the test environment:
# irb -r ./test.i.rb
ENV["RACK_ENV"] = "test"
require './init.rb'
class App < Sinatra::Base
  Mongoid.load!("mongoid.yml")
end
