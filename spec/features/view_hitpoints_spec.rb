feature 'viewing hitpoints' do
  scenario 'view player 2 hit points' do
    visit '/'
    fill_in('player_1_name', with: 'John')
    fill_in('player_2_name', with: 'Paul')
    click_button('Submit')
    expect(page).to have_content 'Paul: 60 Points'
  end
end
