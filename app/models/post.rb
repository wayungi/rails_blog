class Post < ApplicationRecord
    belongs_to :user
    has_many :commnets
    has_many :likes
end
