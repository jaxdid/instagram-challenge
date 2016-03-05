feature 'Users' do
  context 'that are not signed in'
    scenario 'are able to sign in or sign up via the app proper' do
      visit root_path
      expect(page).to have_content 'Sign in'
      expect(page).to have_content 'Sign up'
    end
end