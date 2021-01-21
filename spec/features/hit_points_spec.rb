feature "Viewing hit points" do
  scenario "Player one can view Plater two's hit points" do
    visit('/')
    fill_in("player_one", with: "Pete")
    fill_in("player_two", with: "Claude")
    click_on("Submit")
    expect(page).to have_content "Claude: 60"
  end
end
