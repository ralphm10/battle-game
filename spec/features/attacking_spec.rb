feature 'attacking' do
  scenario 'attack player 2 and receive confirmation' do
    sign_in_and_play
    click_button('attack player 2')
    expect(page).to have_content('John attacked Paul!')
  end
  scenario 'attack player 2 reduces hitpoints' do
    sign_in_and_play
    click_button('attack player 2')
    click_link 'OK'
    expect(page).to have_content('Paul: 50 Points')
  end
end
