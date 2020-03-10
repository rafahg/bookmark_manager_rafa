# in lib/bookmark.rb
require 'pg'
class Bookmark
    def self.all
      # the code below is a hard code i used before the implementation of the database.
      # [
      #   "http://www.makers.tech",
      #   "http://www.destroyallsoftware.com",
      #   "http://www.google.com"
      #  ]
      connection = PG.connect(dbname: 'bookmark_manager')
      result = connection.exec('SELECT * FROM bookmarks')
      result.map { |bookmark| bookmark['url'] }
    end
  end