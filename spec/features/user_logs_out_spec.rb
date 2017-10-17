require 'rails_helper'

feature "user logs out" do
  scenario "using github oauth2" do
    VCR.use_cassette("user_log_out_info") do
      visit root_path
      expect(page).to have_link("Login Using Github")
      mock_auth_hash
      click_on "Login Using Github"
      expect(page).to have_content("Aram-Anderson")
      visit root_path
      expect(page).to have_content("Logout")
      click_on "Logout"
      expect(page).to_not have_content("Logout")
    end
  end
end
