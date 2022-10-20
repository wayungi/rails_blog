class User < ApplicationRecord
  has_many :comments
  has_many :posts
  has_many :likes

  def get3posts
    posts.order(:created_at).first(3)
  end
end

# has_many :posts, foreign_key: 'author_id'
# has_many :comments, foreign_key: 'author_id'
# has_many :likes, foreign_key: 'author_id'
