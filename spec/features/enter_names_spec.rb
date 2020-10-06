feature 'name entry' do
  scenario 'player enters name which is then displayed' do
    visit '/'
    fill_in('player_1_name', with: 'John')
    fill_in('player_2_name', with: 'Paul')
    click_button('Submit')
    expect(page).to have_content 'John vs. Paul'
  end
end
