# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Testing name form' do
  scenario 'Can store and display submitted names' do
    visit('/')
    fill_in 'Player1', with: 'Bob'
    fill_in 'Player2', with: 'Ben'
    click_on 'Submit'
    expect(page).to have_content 'Welcome Bob and Ben, FIGHT!'
  end
end

feature "seeing player 2's hit points" do
  scenario "at the start of game player 2 has 100 hit points" do
    visit('/')
    fill_in 'Player1', with: 'Bob'
    fill_in 'Player2', with: 'Ben'
    click_on 'Submit'
    expect(page).to have_content "Ben's hit points: 100"
  end
end
