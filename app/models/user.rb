class User < ApplicationRecord
    has_many :comments
    has_many :posts, counter_cache: :commentsCounter
    has_many :likes

    def get3posts
        posts.order(:created_at).first(3)
    end
end
