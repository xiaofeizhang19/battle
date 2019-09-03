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
    expect(page).to have_content 'Welcome Bob and Ben!'
  end
end
