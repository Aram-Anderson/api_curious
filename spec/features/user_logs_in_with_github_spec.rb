require 'rails_helper'

feature "user logs in" do
  scenario "using github oauth2" do
    VCR.use_cassette("user_log_in_info") do
      visit root_path
      expect(page).to have_link("Login Using Github")
      mock_auth_hash
      click_on "Login Using Github"
      expect(page).to have_content("Aram-Anderson")
    end
  end
end
