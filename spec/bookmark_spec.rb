require 'bookmark'

describe Bookmark do
  subject(:bookmark) { Bookmark }
  describe '#all method' do
    it 'responds to method' do
      expect(bookmark).to respond_to(:all)
    end
    it 'returns a list of all bookmarks stored' do
      #adds test data
      connection = PG.connect(dbname: 'bookmark-manager-test')
      bookmark = Bookmark.create_new_bookmark('http://www.makersacademy.com', 'Makers Academy')
      Bookmark.create_new_bookmark('http://www.wp.pl', 'WP')
      Bookmark.create_new_bookmark('http://www.destroyallsoftware.com', 'Destroy All Software')

      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end
end
