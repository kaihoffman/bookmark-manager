require "capybara/rspec"

feature "Page loading mechanics" do
  scenario 'Visiting the homepage presents the user with a relevant hello message' do
    visit('/')
    expect(page).to have_content("Bookmark Manager")
  end
end
