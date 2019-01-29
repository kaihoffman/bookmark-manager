require 'bookmark'

describe Bookmark do
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
