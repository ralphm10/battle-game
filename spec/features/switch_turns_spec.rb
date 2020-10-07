feature 'switching turns' do
  context 'seeing current players turn' do
    scenario 'at the start of a game' do
      sign_in_and_play
      expect(page).to have_content "John's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      attack_and_confirm
      expect(page).to have_content "Paul's turn"
    end
  end
end
