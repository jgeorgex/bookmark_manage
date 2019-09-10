require 'web_helper'

feature 'Adding Bookmarks' do
  scenario 'adding a new bookmark' do
    empty_bookmarks
    populate_test
    visit '/bookmarks'
    fill_in 'url', with: "http://www.testurl.com"
    fill_in 'title', with: "Test URL"
    click_button 'Add Bookmark'
    expect(page).to have_content("Test URL")
  end
end