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
