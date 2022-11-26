class Api::CommentsController < ApplicationController
  load_and_authorize_resource

  def index
    @post = Post.find(params[:post_id])
    render json: @post.comments
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user
    @post = Post.find(params[:post_id])
    @comment.post = @post

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
