require_relative "../acceptance_test_helper"

describe App do
  it "greets you" do
    visit '/hello'
    page.must_have_content "Hello world!"
  end

  it "has the correct menu item selected" do
    visit '/hello'
    find(:css, 'div#wrapper div#menu ol a.selected li').text.must_equal "Hello"
  end
end
