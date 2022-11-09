class User < ApplicationRecord
  has_many :posts, foregin_key: 'author_id'
  has_many :comments, foregin_key: 'author_id'
  has_many :likes, foregin_key: 'author_id'
end
