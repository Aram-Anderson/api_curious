class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :uid
      t.string  :username
      t.string  :token
      t.string  :avatar_url
      t.string  :followers_url
      t.string  :following_url
      t.string  :starred_url
      t.string  :repos_url
      t.string  :company
      t.string  :location
      t.string  :email
      t.boolean :hireable
      t.text    :bio
      t.integer :public_repos_count
      t.integer :public_gists_count
      t.integer :followers_count
      t.integer :following_count

      t.timestamps
    end
  end
end
