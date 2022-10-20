class AddForeignKeyToComments < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :comments, :users
    add_foreign_key :comments, :posts
  end
end
