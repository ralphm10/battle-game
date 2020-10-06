feature 'name entry' do
  scenario 'player enters name which is then displayed' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Paul'
  end
end
