require 'bookmark'
require 'web_helper'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      empty_bookmarks
      populate_test
      bookmarks = Bookmark.all
      expect(bookmarks[0].title).to eq("Makers")
      expect(bookmarks[1].title).to eq("DAS")
      expect(bookmarks[2].title).to eq("Google")
    end
  end
end
