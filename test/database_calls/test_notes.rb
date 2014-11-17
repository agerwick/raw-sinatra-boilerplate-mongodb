require_relative "../database_calls_test_helper"

describe App do

  describe "notes database" do
    it "should be a mongoig object" do
      Note.all.class.must_equal Mongoid::Criteria
    end
  end

  ## The model is so simple, there's no need to test anything else (as it's being taken care of by mongoid).
  ## If any methods are added to the model, they should be tested here.

end
