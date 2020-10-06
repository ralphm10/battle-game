feature 'testing infrastructure' do
  scenario 'run app and check for some content' do
    visit '/'
    expect(page).to have_content 'testing infrastructure'
  end
end
