require_relative "../unit_test_helper"

class HtmlEncodingTest < Test

#   setup do
#     @user = User.gen
#   end

  test 'html encoding tags' do
    assert h "<>" == "&lt;&gt;"
  end

  test "html encoding quotes" do
    "The &quot;simple&quot; &#x27;solution&#x27;".must_equal h "The \"simple\" 'solution'"
  end

end

describe App do
  describe "bigger and smaller" do
    it "should return the biggest element of an array" do
      [1, -1000, 400, 555, 33, 98].biggest.must_equal 555
    end
    it "should return the smallest element of an array" do
      [1, -1000, 400, 555, 33, 98].smallest.must_equal -1000
    end
  end
end
