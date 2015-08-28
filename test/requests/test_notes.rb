require_relative "../requests_test_helper"

describe App do

  describe "notes page" do
    it "should add a new note" do
      post '/notes', :content => 'My new note'
      follow_redirect!
      last_response.must_be_ok
      last_response.body.must_include 'My new note'
    end
    it "should return 404 NOT FOUND when trying to delete a non-existing noe" do
      delete "/note/0"
      last_response.must_be_not_found
    end
  end

end
