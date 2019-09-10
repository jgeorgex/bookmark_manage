require 'bookmark'
require 'web_helper'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      empty_bookmarks
      populate_test
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
