class CreatePostLikesTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :posts, :users
    rename_table :posts_users, :postslikes
    end
  end
