require 'bookmark'

describe Bookmark do
  subject(:bookmark) { Bookmark.new }

  describe '#all method' do
    it 'responds to method' do
      expect(bookmark).to respond_to(:all)
    end
    it 'returns a list of all bookmarks stored' do
      
    end
  end
end
