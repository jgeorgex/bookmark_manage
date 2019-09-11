require 'web_helper'

feature 'Adding Bookmarks' do
  scenario 'adding a new bookmark' do
    empty_bookmarks
    populate_test
    visit '/bookmarks'
    fill_in 'url', with: "http://www.yahoo.com"
    fill_in 'title', with: "Yahoo"
    click_button 'Add Bookmark'
    #expect(page).to have_content("Yahoo")
    expect(page).to have_link('Yahoo', href: 'http://www.yahoo.com')
  end
end
