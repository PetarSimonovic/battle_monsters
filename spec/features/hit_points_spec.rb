feature "Viewing hit points" do
  scenario "Player one can view Plater two's hit points" do
    sign_in_and_play
    expect(page).to have_content "Claude: 60"
  end
end
