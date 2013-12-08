# encoding: UTF-8
ENV['RACK_ENV'] = 'test' # gets picked up by sinatra when loaded

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
