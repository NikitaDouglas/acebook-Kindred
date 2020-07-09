class AddUserEmailToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :user, :integer
  end
end
