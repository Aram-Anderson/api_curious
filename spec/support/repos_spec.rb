require 'rails_helper'

RSpec.describe Repo, type: :model do
  it "is instantiated with valid attributes" do
    attrs = {
            name: "Awsome Code Party",
            html_url: "https://partytimefunthings.com"
            }

    repo = Repo.new(attrs)

    expect(repo.name).to eq("Awsome Code Party")
    expect(repo.url).to eq("https://partytimefunthings.com")
  end
end
