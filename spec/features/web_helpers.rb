def sign_in_and_play
  visit '/'
  fill_in('player_1_name', with: 'John')
  fill_in('player_2_name', with: 'Paul')
  click_button('Submit')
end

def attack_and_confirm
  click_button 'attack opponent'
  click_link 'OK'
end 
