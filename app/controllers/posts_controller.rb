class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:id])
    @post_text = @post.text
    @author = @post.author.name
    @comments = @post.comments
    @comments_count = @post.comments.length
    @likes_count = @post.likes.length
  end
end
