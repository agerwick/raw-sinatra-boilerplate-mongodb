require_relative "../acceptance_test_helper"
# capybara syntax: see doc/capybara_cheat_sheet

describe App do
  it "greets visitors and asks for their name" do
    visit '/'
    page.must_have_content 'Welcome!'
    within 'div#wrapper div#content form' do
      page.find_field('firstname').value.must_equal ""
      page.find("input[type=submit]", options = {}).value.must_equal "Submit"
    end
  end

  it "knows my name!" do
    visit '/'

    within 'div#wrapper div#content form' do
      fill_in 'firstname', :with => "Testing Person"
      click_on 'Submit'
    end

    page.must_have_content 'Hello Testing Person, my friend!'
    within 'div#wrapper div#content form' do
      page.find_field('firstname').value.must_equal 'Testing Person'
    end
  end

  it "will clean the input" do
    visit '/'
    @hack_name = "'""><i>Fjodleik</i>"
    within 'div#wrapper div#content form' do
      fill_in 'firstname', :with => @hack_name
      click_on 'Submit'
    end
    page.within 'div#wrapper div#content h1' do
      page.must_have_content 'Fjodleik'
      page.wont_have_selector 'i'  # html input should be encoded, hence there won't be an <i> tag inside <h1>
    end
    page.within 'div#wrapper div#content form' do
      find_field('firstname').value.must_equal @hack_name  # the entire input is repeated and encoded properly
    end
  end
end
