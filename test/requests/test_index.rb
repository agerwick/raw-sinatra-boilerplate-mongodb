require_relative "../requests_test_helper"

describe App do

  describe "index page" do
    it "should say welcome" do
      get '/'
      last_response.must_be_ok
      last_response.body.must_include 'Welcome!'
    end

    it "should greet a person by name" do
      post '/', :firstname => 'Goofy'
      last_response.must_be_ok
      last_response.body.must_include 'Hello Goofy'
    end

    it "should encode html sent via the input fields" do
      post '/', :firstname => '><nasty stuff><'
      last_response.must_be_ok
      last_response.body.must_include '&gt;&lt;nasty stuff&gt;&lt;'
    end

    it "should return 404 if page is not found" do
      get '/this_definitely_does_not_exist'
      last_response.must_be_not_found
      last_response.body.wont_include 'Welcome!'
    end
  end

end
