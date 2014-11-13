# encoding: UTF-8
require_relative "./business_logic_test_helper.rb"

require 'rack/test'
require 'rack-minitest/test'

# needed by Rack::Test so the mock request methods send requests to App object
def app
  App
end

class MiniTest::Spec
  # provides Rack's mock test methods, such as the http request verbs (get, post, ...)
  include Rack::Test::Methods

  # provides json relates methods, such as get_json, post_json, last_json_response
  include Rack::Minitest::JSON

  # provides assertions such as assert_ok, assert_response_status
  # include Rack::Minitest::Assertions  ## included in expectations

  # provides expectations/matchers such as last_response.must_be_ok and last_response.must_be_not_found
  include Rack::Minitest::Expectations
end
