# encoding: UTF-8
ENV['RACK_ENV'] = 'test' # gets picked up by sinatra when loaded

# Note: If SimpleCov starts after the application code is already loaded (via require), 
# it won't be able to track the files and their coverage!
# The SimpleCov.start must be issued before any of the application code is required!
require 'simplecov'
SimpleCov.start

require 'bundler'

Bundler.setup
Bundler.require

require_relative "../init.rb"
require 'minitest/pride'
require 'minitest/autorun'
require 'minitest/spec'
require 'rack/test'

class MiniTest::Spec
  include Rack::Test::Methods
end
