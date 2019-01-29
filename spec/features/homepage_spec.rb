require "capybara/rspec"

feature "Page loading mechanics" do
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
