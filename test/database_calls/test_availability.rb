require_relative "../database_calls_test_helper"

describe App do

  describe "should_have_a_database_available" do
    it "should return a database object" do
      Note.all.class.must_equal Mongoid::Criteria
    end
  end

end
