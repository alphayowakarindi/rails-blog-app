class Api::CommentsController < ApplicationController
  load_and_authorize_resource

  def index
    @post = Post.find(params[:post_id])
    render json: @post.comments
  end
end
