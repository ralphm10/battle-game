feature 'switching turns' do
  context 'seeing current players turn' do
    scenario 'at the start of a game' do
      sign_in_and_play
      expect(page).to have_content "John's turn"
    end
  end
end 
