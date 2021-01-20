feature "Adding player names" do
  scenario "Can receive and output player names" do
    visit('/')
    fill_in("player_one", with: "Pete")
    fill_in("player_two", with: "Claude")
    click_on("Submit")
    expect(page).to have_content "It's Pete versus Claude!"
  end
end
