feature "Player one attack" do
  scenario "Player one pushes button to attack" do
    sign_in_and_play
    click_on("Attack")
    expect(page).to have_content("Attacked!")
  end
end
