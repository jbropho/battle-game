describe 'the home page', :type => :feature do
  it 'displays a home page' do
   visit '/'
   expect(page).to have_content 'Hello world!'
  end
end
