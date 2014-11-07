require_relative "../unit_test_helper"

describe App do

  describe "menu items" do
    it "should return correct html for the root menu item" do
      request = requestMock.new("/")
      request.path.must_equal "/"          ## this works
      menuItem('/', 'home').must_equal ""  ## this doesn't because menuItem doesn't pick up the local request object - how do I define it (or a better mock object) so that all of the application can see it when running tests?
    end
  end

  describe "html encoding" do
    it "should encode html tags" do
      escape_html("<>").must_equal "&lt;&gt;"
    end
    it "should encode quotes" do
      h("The \"simple\" 'solution'").must_equal "The &quot;simple&quot; &#x27;solution&#x27;"
    end
  end

  describe "url encoding" do
    it "should encode spaces" do
      escape_path("test?something=nothing&something else=<blah>").must_equal "test%3Fsomething%3Dnothing%26something%20else%3D%3Cblah%3E"
    end
  end

  describe "bigger and smaller" do
    it "should return the biggest element of an array" do
      [1, -1000, 400, 555, 33, 98].biggest.must_equal 555
    end
    it "should return the smallest element of an array" do
      [1, -1000, 400, 555, 33, 98].smallest.must_equal -1000
    end
  end
end
