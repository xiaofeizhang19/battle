feature "seeing player 2's hit points" do
  scenario "at the start of game player 2 has 100 hit points" do
    sign_in_and_play
    expect(page).to have_content "Ben's hit points: 100"
  end
end
