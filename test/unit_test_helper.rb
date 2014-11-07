# encoding: utf-8
require_relative "spec_helper"
require_relative "sinatra_mock_objects"


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



# anything within this class will be made available to all tests
class Test < MiniTest::Spec # MiniTest::Unit::TestCase
  include TestHelpers   # see above
  include AppHelpers           # make it possible to test helpers
  include SinatraMockObjects   # mock objects used by helpers, etc.
end

# the following makes the Test class above the parent of all tests, so they will inherit from it
MiniTest::Spec.register_spec_type(/.*/, Test)

# define Sinatra Application Namespace to run unit tests from within
def App
  Namespace::App   # or Sinatra::Application
end

#def app
#  App.new
#end
