feature 'viewing hitpoints' do
  scenario 'view player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Paul: 60 Points'
  end
end
