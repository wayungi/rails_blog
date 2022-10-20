class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post # counter_cache: :postsCounter

  # A method that updates the comments counter for a post.
  def update_comment_counter
    post.update(commentsCounter(:post.comments.length))
  end
end
