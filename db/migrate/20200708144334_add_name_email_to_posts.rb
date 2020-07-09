# frozen_string_literal: true

class AddNameEmailToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :email, :string
    add_column :posts, :name, :string
  end
end
