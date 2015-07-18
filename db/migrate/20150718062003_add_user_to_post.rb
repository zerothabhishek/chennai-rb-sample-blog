class AddUserToPost < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer, index: true, foreign_key: true
  end
end
