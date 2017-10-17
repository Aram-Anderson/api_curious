class User < ApplicationRecord

  def self.from_omniauth(auth_info)
    where(uid: auth_info[:uid]).first_or_create do |new_user|
      new_user.uid                = auth_info["extra"]["raw_info"]["id"]
      new_user.username           = auth_info["extra"]["raw_info"]["login"]
      new_user.token              = auth_info["credentials"]["token"]
      new_user.avatar_url         = auth_info["extra"]["raw_info"]["avatar_url"]
      new_user.followers_url      = auth_info["extra"]["raw_info"]["followers_url"]
      new_user.following_url      = auth_info["extra"]["raw_info"]["following_url"]
      new_user.starred_url        = auth_info["extra"]["raw_info"]["starred_url"]
      new_user.repos_url          = auth_info["extra"]["raw_info"]["repos_url"]
      new_user.company            = auth_info["extra"]["raw_info"]["company"]
      new_user.location           = auth_info["extra"]["raw_info"]["location"]
      new_user.email              = auth_info["extra"]["raw_info"]["email"]
      new_user.hireable           = auth_info["extra"]["raw_info"]["hireable"]
      new_user.bio                = auth_info["extra"]["raw_info"]["bio"]
      new_user.public_repos_count = auth_info["extra"]["raw_info"]["public_repos"]
      new_user.public_gists_count = auth_info["extra"]["raw_info"]["public_gists"]
      new_user.followers_count    = auth_info["extra"]["raw_info"]["followers"]
      new_user.following_count    = auth_info["extra"]["raw_info"]["following"]
    end
  end
end
