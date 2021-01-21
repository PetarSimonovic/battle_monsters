def sign_in_and_play

  visit('/')
  fill_in("player_one", with: "Pete")
  fill_in("player_two", with: "Claude")
  click_on("Submit")

end
