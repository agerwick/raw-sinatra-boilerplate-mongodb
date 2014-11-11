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


#   describe "html encoding" do
#     it "should encode html tags" do
#       escape_html("<>").must_equal "&lt;&gt;"
#     end
#     it "should encode quotes" do
#       h("The \"simple\" 'solution'").must_equal "The &quot;simple&quot; &#x27;solution&#x27;"
#     end
#   end
#
#   describe "url encoding" do
#     it "should encode spaces" do
#       escape_path("test?something=nothing&something else=<blah>").must_equal "test%3Fsomething%3Dnothing%26something%20else%3D%3Cblah%3E"
#     end
#   end
#
#   describe "menu items the way that works but which I find ugly" do
#     it "should return correct html for the root menu item III" do
#       @helper = Struct.new(:request).new
#       @helper.request = MiniTest::Mock.new
#       @helper.request.expect :path, '/'
#       @helper.menuItem('/', 'home').must_equal ""
#     end
#   end

end
