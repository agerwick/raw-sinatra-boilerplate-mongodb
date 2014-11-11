require_relative "../acceptance_test_helper"

describe App do
  it "greets you" do
    visit '/hello'
    page.must_have_content "Hello world!"
  end

  it "has the correct menu item selected and named correctly" do
    visit '/hello'
    page.within 'div#wrapper div#menu ol' do
      page.within 'a.selected li' do # this wil test that the current page is selected
        page.text.must_equal "Hello"
      end
      page.within 'a#holle li' do # this will test that the custom id tag was set
        page.text.must_equal "Hello"
      end
    end
  end
end
