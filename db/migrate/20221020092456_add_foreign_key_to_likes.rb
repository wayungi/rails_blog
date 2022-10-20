class AddForeignKeyToLikes < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :likes, :users
    add_foreign_key :likes, :posts
  end
end
