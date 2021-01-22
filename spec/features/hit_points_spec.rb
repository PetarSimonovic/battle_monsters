feature "Viewing hit points" do

  scenario "Player One can view Player Two's hit points" do
    sign_in_and_play
    expect(page).to have_content "Claude: 60"
  end

  scenario "Hit points are reduced by 10 after attack" do
    sign_in_and_play
    click_on("Attack")
    click_on("Next move")
    expect(page).to have_content "Claude: 50"
  end

end
