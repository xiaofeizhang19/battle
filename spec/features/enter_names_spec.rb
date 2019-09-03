feature 'Testing name form' do
  scenario 'Can store and display submitted names' do
    sign_in_and_play 
    expect(page).to have_content 'Welcome Bob and Ben, FIGHT!'
  end
end
