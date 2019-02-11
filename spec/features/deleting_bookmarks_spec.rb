require 'capybara/rspec'
require 'bookmark'

feature "Deleting a bookmark" do
  before(:each) do
    connection = PG.connect(dbname: 'bookmark-manager-test')
    Bookmark.create_new_bookmark('http://www.wp.pl', 'WP')
    Bookmark.create_new_bookmark('http://www.destroyallsoftware.com', 'Destroy All Software')
  end

  scenario "Deletes one of the added bookmarks" do
    visit('/bookmarks')
    click_button('Delete 2')
    expect(current_path).to eq '/bookmarks'
    expect(page).to have_no_content('Destroy All Software')
  end
end
