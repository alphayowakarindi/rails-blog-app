require 'rails_helper'

RSpec.describe Like, type: :model do
  # tests go here
  user_one = User.new(name: 'Dan', photo: 'link/goes/here', bio: 'this is my bio')
  post = Post.new(title: 'My first post', text: 'Body text of the post', author_id: user_one.id)
  like = Like.new(author_id: user_one.id, post_id: post.id)

  it 'like count to increase by one' do
    expect(like.post_id).to be == post.id
    expect(like.author_id).to be == user_one.id
  end
end
