require_relative "../requests_test_helper"

describe App do

  describe "notes page" do
    it "should add a new note" do
      post '/notes', :content => 'My new note'
      last_response.must_be_ok
      last_response.body.must_include 'My new note'
    end
  end

end
