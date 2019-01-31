require 'bookmark'

describe Bookmark do
  subject(:bookmark) { Bookmark }
  describe '#all method' do
    it 'responds to method' do
      expect(bookmark).to respond_to(:all)
    end
    it 'returns a list of all bookmarks stored' do
      connection = PG.connect(dbname: 'bookmark-manager-test')
      Bookmark.create_new_bookmark('http://www.wp.pl', 'WP')
      Bookmark.create_new_bookmark('http://www.destroyallsoftware.com', 'Destroy All Software')

      expect(bookmark.all).to include "http://www.wp.pl"
      expect(bookmark.all).to include "http://www.destroyallsoftware.com"
    end
  end
end
