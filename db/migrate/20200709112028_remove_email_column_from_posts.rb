# frozen_string_literal: true

class RemoveEmailColumnFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :email, :varchar
  end
end
