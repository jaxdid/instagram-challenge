feature "Users" do
  context "that are not signed in" do
    scenario "are able to sign in or sign up via the app proper" do
      visit root_path
      click_link "Sign up"
      fill_in "Email", with: "admin@example.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_button "Sign up"
      expect(page).not_to have_link "Sign in"
      expect(page).not_to have_link "Sign up"
      expect(page).to have_content "Welcome! You have signed up successfully."
      expect(page).to have_link "Sign out"
    end
  end
    
  context "that are signed in" do
    scenario "are able to sign out" do
      visit root_path
      click_link "Sign up"
      fill_in "Email", with: "admin@example.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_button "Sign up"
      click_link "Sign out"
      expect(page).not_to have_link "Sign out"
      expect(page).to have_content "Signed out successfully."
      expect(page).to have_link "Sign in"
      expect(page).to have_link "Sign up"
    end
  end
end