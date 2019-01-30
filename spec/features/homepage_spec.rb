require "capybara/rspec"

feature "Page loading mechanics" do
  before(:each) do
    connection = PG.connect(dbname: 'bookmark-manager-test')
    #drop existing tables
    connection.exec("DROP TABLE IF EXISTS bookmarks;")
    #create new table.
    connection.exec("CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.wp.pl');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
  end
  scenario 'Visiting the homepage presents the user with a relevant hello message' do
    visit('/')
    expect(page).to have_content("Bookmark Manager")
  end

  scenario 'Visiting /bookmarks will present the user with a list of all bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("All your currently-stored bookmarks")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
