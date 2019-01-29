require 'pg'


class Bookmark
  @conn = PG.connect( dbname: 'bookmark-manager' )

  def self.all
    result = @conn.exec( "SELECT * FROM bookmarks ORDER BY id" )
      result.map do |row|
        row['url']
      end
    end
  end
