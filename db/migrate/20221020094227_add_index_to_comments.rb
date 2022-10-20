class AddIndexToComments < ActiveRecord::Migration[7.0]
  def change
    add_index :comments, :user_id
    add_index :comments, :post_id
  end
end
