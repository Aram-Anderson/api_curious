require 'rails_helper'

RSpec.describe User, type: :model do
  it "is instantiated with valid attributes" do
    attrs = {
      id: 4,
      uid: "22850330",
      username: "Aram-Anderson",
      token: "dbbc9d71af97fc6308a59ec0a00d0c49e767294b",
      avatar_url: "https://avatars2.githubusercontent.com/u/22850330?...",
      followers_url: "https://api.github.com/users/Aram-Anderson/followe...",
      following_url: "https://api.github.com/users/Aram-Anderson/followi...",
      starred_url: "https://api.github.com/users/Aram-Anderson/starred...",
      repos_url: "https://api.github.com/users/Aram-Anderson/repos",
      company: "Currently seeking opportunities",
      location: "Denver, CO",
      email: nil,
      hireable: true,
      bio: nil,
      public_repos_count: 46,
      public_gists_count: 13,
      followers_count: 2,
      following_count: 4,
      created_at: "2017-10-11 20:38:29",
      updated_at: "2017-10-11 20:38:29"
    }

    user = User.new(attrs)
    expect(user.uid).to eq("22850330")
    expect(user.location).to eq("Denver, CO")
    expect(user.company).to eq("Currently seeking opportunities")
    expect(user.public_repos_count).to eq(46)
  end
end
