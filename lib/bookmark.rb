require 'pg'


class Bookmark
  if ENV['ENVIRONMENT'] == 'test'
    @conn = PG.connect(dbname: 'bookmark-manager-test ')
  else
    @conn = PG.connect(dbname: 'bookmark-manager')
  end

  def self.all
    result = @conn.exec( "SELECT * FROM bookmarks ORDER BY id" )
      result.map do |row|
        row['url']
      end
  end
end
