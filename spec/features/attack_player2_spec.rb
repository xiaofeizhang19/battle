feature 'Attacking player 2' do
  scenario "attack player 2 and get confirmation" do
    sign_in_and_play
    click_on 'Attack!'
    expect(page).to have_content "You have attacked Ben!"
  end
end
