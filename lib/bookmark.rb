require 'pg'

class Bookmark

  def self.all
    connection =  PG.connect(dbname:'bookmarks')
  end
end
