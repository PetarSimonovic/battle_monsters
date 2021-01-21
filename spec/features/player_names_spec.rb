feature "Adding player names" do
  scenario "Can receive and output player names" do
    sign_in_and_play
    expect(page).to have_content "It's Pete versus Claude!"
  end
end
