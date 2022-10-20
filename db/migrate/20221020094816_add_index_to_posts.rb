class AddIndexToPosts < ActiveRecord::Migration[7.0]
  def change
    add_index :posts, :user_id
  end
end
