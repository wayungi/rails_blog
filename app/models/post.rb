class Post < ApplicationRecord
  belongs_to :user # counter_cache: :postsCounter
  has_many :comments # counter_cache: :commentsCounter
  has_many :likes

  # A method which returns the 5 most recent comments for a given post.
  def getcomments
    comments.order(:created_at).first(5)
  end

  # A method that updates the posts counter for a user.
  def update_user_posts_counter
    user.update(postsCounter: use.posts.length)
  end
end
