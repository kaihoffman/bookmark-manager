require 'bookmark'

describe Bookmark do
  subject(:bookmark) { Bookmark }

  describe '#all method' do
    it 'responds to method' do
      expect(bookmark).to respond_to(:all)
    end
    it 'returns a list of all bookmarks stored' do
      expect(bookmark.all).to include "http://www.google.com"
      expect(bookmark.all).to include "http://www.facebook.com"
    end
  end
end
