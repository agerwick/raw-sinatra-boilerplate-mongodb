require_relative "../acceptance_test_helper"
# capybara syntax: see doc/capybara_cheat_sheet

describe App do
  it "can delete a note" do
    visit '/notes'
    page.status_code.must_equal 200
    page.must_have_content 'Enter new note here:'
    within 'div#wrapper div#content form#new' do
      content_field = page.find_field('content')
      content_field.value.must_equal ""
      @content = "Note made at #{Time.now()} ... #{rand(10000)}"
      content_field.set @content
      find('input[type="submit"]').click  #click_button 'Save'
    end

    page.status_code.must_equal 200
    # find the database record
    note_in_db = Note.where(content: @content)[0]
    note_in_db.content.must_equal @content

    within "div#wrapper div#content .notes .note#note#{note_in_db._id}" do
      page.must_have_content @content
      page.find_link("delete" + note_in_db._id.to_s + "-link").click
    end

    page.status_code.must_equal 200
    within "div#wrapper div#content .notes" do
      page.wont_have_content @content
    end
  end
end
