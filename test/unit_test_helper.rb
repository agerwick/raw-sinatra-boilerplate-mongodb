# encoding: utf-8
require_relative "spec_helper"

module TestHelpers
  module ClassMethods

    def test(name, &block)
      test_name = name.split.unshift('test').join('_')
      define_method test_name, &block
    end

    def setup(&block)
      define_method 'setup', &block
    end

  end
  def self.included(base)
    base.extend ClassMethods
  end
end

class Test < MiniTest::Unit::TestCase
  include Rack::Test::Methods
  include TestHelpers   # see above
  include AppHelpers    # make it possible to test helpers

  def App
    Namespace::App   # or Sinatra::Application
  end
end
