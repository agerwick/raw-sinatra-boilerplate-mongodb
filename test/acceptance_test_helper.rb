# encoding: utf-8
require_relative "spec_helper"

require 'capybara'
require 'capybara/dsl'
require 'capybara/webkit'
require 'capybara_minitest_spec'

Capybara.app = App
Capybara.default_driver = :webkit

class MiniTest::Spec
  include Capybara::DSL
end

# class Capybara::Session
#   def params
#     Hash[*URI.parse(current_url).query.split(/\?|=|&/)]
#   end
# end
