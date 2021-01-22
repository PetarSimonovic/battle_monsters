feature "Viewing hit points" do
  scenario "Player One can view Player Two's hit points" do
    sign_in_and_play
    expect(page).to have_content "Claude: 60"
  end
end
