class CommentsController < ApplicationController
  load_and_authorize_resource

  before_action :set_post, only: [:create]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user
    @comment.post = @post

    if @comment.save
      # redirect_to the post commented on
      redirect_to user_post_path(@post.author, @post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to user_post_path(current_user, params[:post_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end

  # post commented on
  def set_post
    @post = Post.find(params[:post_id])
  end
end
