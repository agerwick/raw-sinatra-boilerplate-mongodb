# encoding: UTF-8
ENV['RACK_ENV'] = 'test' # gets picked up by sinatra when loaded

# Condeclimate test reporter must be started before everything else
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

# Note: If SimpleCov starts after the application code is already loaded (via require),
# it won't be able to track the files and their coverage!
# The SimpleCov.start must be issued before any of the application code is required!
begin
  require 'simplecov'      # makes it easy to see your test coverage (coverage/index.html)
  SimpleCov.start
rescue LoadError => err
  # no problem, we can continue without it. (this is for Travis integration, as it fails there)
end

require 'bundler'

Bundler.setup
Bundler.require

require_relative "../init.rb"

require 'minitest/pride'   # required for simplecov
require 'minitest/spec'    # enables the language of tests specified here: http://docs.seattlerb.org/minitest/Minitest/Expectations.html
require 'minitest/autorun'
