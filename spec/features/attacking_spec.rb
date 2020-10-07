feature 'attacking' do
  scenario 'attack player 2 and receive confirmation' do
    sign_in_and_play
    click_button('attack opponent')
    expect(page).to have_content('John attacked Paul!')
  end
  scenario 'attack player 2 reduces hitpoints' do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_content('Paul: 50 Points')
  end
  scenario 'attack player 1 and receive confirmation' do
    sign_in_and_play
    2.times { attack_and_confirm }
    expect(page).to have_content('John: 50 Points')
  end
end
