require 'pg'

class Bookmark
attr_reader :url, :title

  def initialize(url, title)
    @url = url
    @title = title
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname:'bookmark_manager_test')
    else
      connection = PG.connect(dbname:'bookmark_manager')
    end
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| Bookmark.new(bookmark['url'], bookmark['title']) }
  end

  def self.add(url, title)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname:'bookmark_manager_test')
    else
      connection = PG.connect(dbname:'bookmark_manager')
    end
      result = connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}') RETURNING url, title")
    Bookmark.new(result[0]['url'], result[0]['title'])
  end
end
