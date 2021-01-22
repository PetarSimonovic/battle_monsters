feature "Player one attack" do
  scenario "Player one pushes button to attack" do
    sign_in_and_play
    click_on("Attack")
    expect(page).to have_content("Pete attacked Claude!")
  end
end

feature "Players switch turns" do
  scenario "Player two attacks after player one" do
    sign_in_and_play
    click_on("Attack")
    click_on("Next move")
    expect(page).to have_content("It's Claude versus Pete!")
  end
end



 # 4. player 1 clicks on "next move"
 # 5. expect the play page to show player 2 is attacking
 #
 #
 # 6. player 2 clicks on attack
 # 7. expect the attack page to be shown
 # 8. expect player 1 HP to be deducted
 # 9. player 2 clicks on "next move"
 # 10. expect the play page to show player 1 is attacking
