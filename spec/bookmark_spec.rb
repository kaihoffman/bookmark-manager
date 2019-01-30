require 'bookmark'

describe Bookmark do
  before(:each) do
    connection = PG.connect(dbname: 'bookmark-manager-test')
    #drop existing tables
    connection.exec("DROP TABLE IF EXISTS bookmarks;")
    #create new table.
    connection.exec("CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.wp.pl');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
  end
  subject(:bookmark) { Bookmark }
  describe '#all method' do
    it 'responds to method' do
      expect(bookmark).to respond_to(:all)
    end
    it 'returns a list of all bookmarks stored' do
      expect(bookmark.all).to include "http://wp.pl"
      expect(bookmark.all).to include "http://www.destroyallsoftware.com"
    end
  end
end
