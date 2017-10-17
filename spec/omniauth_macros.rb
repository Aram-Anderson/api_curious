module OmniauthMacros
  def mock_auth_hash
    OmniAuth.config.mock_auth[:github] =
    auth_info =
    {"provider"=>"github",
      "uid"=>"22850330",
      "info"=>
      {"nickname"=>"Aram-Anderson",
        "email"=>nil,
        "name"=>"Aram",
        "image"=>"https://avatars2.githubusercontent.com/u/22850330?v=4",
        "urls"=>
        {"GitHub"=>"https://github.com/Aram-Anderson", "Blog"=>"aramanderson.com"}},
        "credentials"=>{"token"=>"728f4145480aa5025cf27e04bfc640c9666360fd", "expires"=>false},
        "extra"=>
        {"raw_info"=>
          {"login"=>"Aram-Anderson",
            "id"=>22850330,
            "avatar_url"=>"https://avatars2.githubusercontent.com/u/22850330?v=4",
            "gravatar_id"=>"",
            "url"=>"https://api.github.com/users/Aram-Anderson",
            "html_url"=>"https://github.com/Aram-Anderson",
            "followers_url"=>"https://api.github.com/users/Aram-Anderson/followers",
            "following_url"=>"https://api.github.com/users/Aram-Anderson/following{/other_user}",
            "gists_url"=>"https://api.github.com/users/Aram-Anderson/gists{/gist_id}",
            "starred_url"=>"https://api.github.com/users/Aram-Anderson/starred{/owner}{/repo}",
            "subscriptions_url"=>"https://api.github.com/users/Aram-Anderson/subscriptions",
            "organizations_url"=>"https://api.github.com/users/Aram-Anderson/orgs",
            "repos_url"=>"https://api.github.com/users/Aram-Anderson/repos",
            "events_url"=>"https://api.github.com/users/Aram-Anderson/events{/privacy}",
            "received_events_url"=>"https://api.github.com/users/Aram-Anderson/received_events",
            "type"=>"User",
            "site_admin"=>false,
            "name"=>"Aram",
            "company"=>"Currently seeking opportunities",
            "blog"=>"aramanderson.com",
            "location"=>"Denver, CO",
            "email"=>nil,
            "hireable"=>true,
            "bio"=>nil,
            "public_repos"=>45,
            "public_gists"=>13,
            "followers"=>2,
            "following"=>4,
            "created_at"=>"2016-10-15T05:16:52Z",
            "updated_at"=>"2017-10-10T20:03:08Z"},
            "all_emails"=>[]}}
          end
        end
