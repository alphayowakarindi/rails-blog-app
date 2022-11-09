class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  after_save :update_posts_counter

  def update_posts_counter
    author.increment!(:posts_counter)
  end
end
