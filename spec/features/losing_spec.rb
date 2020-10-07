feature 'losing' do
  scenario 'player loses when points reach 0' do
    sign_in_and_play
    10.times do
      attack_and_confirm
    end
    click_button 'attack opponent'
    expect(page).to have_content('Paul Loses!')
  end
end
