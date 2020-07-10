# frozen_string_literal: true

class RemoveUserColumnFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :user, :integer
    remove_column :posts, :user_id, :integer
  end
end
