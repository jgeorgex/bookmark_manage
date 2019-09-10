require 'pg'
require 'bookmark'

def empty_bookmarks
  connection = PG.connect(dbname:'bookmark_manager_test')
 connection.exec("TRUNCATE bookmarks")
end

def populate_test
  connection = PG.connect(dbname:'bookmark_manager_test')
  Bookmark.add('http://www.makersacademy.com', 'Makers')
  Bookmark.add('http://www.destroyallsoftware.com', 'DAS')
  Bookmark.add('http://www.google.com', 'Google')
end

