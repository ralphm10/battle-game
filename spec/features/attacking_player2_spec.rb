feature 'attcking player 2' do
  scenario 'attack player 2 and receive confirmation' do
    sign_in_and_play
    click_button('attack player 2')
    expect(page).to have_content('John attacked Paul!')
  end
end
