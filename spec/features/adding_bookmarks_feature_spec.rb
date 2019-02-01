feature "Adding bookmarks to the system" do
  scenario 'User can add a new bookmark off the main /bookmarks page' do
    visit('/bookmarks')
    fill_in :title, with: "CNN News"
    fill_in :url, with: "https://edition.cnn.com"
    click_button 'Add bookmark'
    expect(page).to have_content("All your currently-stored bookmarks")
    expect(page).to have_content('CNN News')
  end

end
