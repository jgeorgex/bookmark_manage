require 'web_helper'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    empty_bookmarks
    populate_test
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
