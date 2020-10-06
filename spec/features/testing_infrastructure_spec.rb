feature 'testing infrastructure' do
  scenario 'run app and check for some content' do
    visit '/test'
    expect(page).to have_content 'testing infrastructure'
  end
end
