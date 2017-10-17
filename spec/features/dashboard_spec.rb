require 'rails_helper'

describe "User logs in" do
  context "and is redirected to dasboard" do
    scenario "and sees their repos" do
      VCR.use_cassette("user_repos") do
        visit root_path
        expect(page).to have_link("Login Using Github")
        mock_auth_hash

        click_on "Login Using Github"
        expect(page).to have_content("Your Repos:")
        expect(page).to have_css(".repos", count: 30)
      end
    end
  end
end
