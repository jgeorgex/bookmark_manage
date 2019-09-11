require 'web_helper'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    empty_bookmarks
    populate_test
    visit('/bookmarks')
    expect(page).to have_content 'Makers'
    expect(page).to have_content 'DAS'
    expect(page).to have_content 'Google'
    expect(page).to have_link href: 'http://www.makersacademy.com'
    expect(page).to have_link href: 'http://www.destroyallsoftware.com'
    expect(page).to have_link href: 'http://www.google.com'
  end
end
