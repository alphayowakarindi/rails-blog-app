require 'rails_helper'

RSpec.describe Comment, type: :model do
  # tests go here
  user_one = User.new(name: 'Dan', photo: 'link/goes/here', bio: 'this is my bio')
  post = Post.new(title: 'My first post', text: 'Body text of the post', author_id: user_one.id)
  comment = Comment.new(text: 'My first awesom comment', author_id: user_one.id, post_id: post.id)

  it 'comment author_id to be equla to author id' do
    expect(comment.post_id).to be == post.id
  end
end
