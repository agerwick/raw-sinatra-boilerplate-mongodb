# encoding: utf-8
require_relative "spec_helper"

class Test < MiniTest::Spec # MiniTest::Unit::TestCase
  # anything within this class will be made available to all tests
end

# the following makes the Test class above the parent of all tests, so they will inherit from it
MiniTest::Spec.register_spec_type(/.*/, Test)
