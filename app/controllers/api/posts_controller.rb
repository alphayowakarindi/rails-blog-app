class Api::PostsController < ApplicationController
  before_action :require_login
  load_and_authorize_resource

  def index
    @user = User.find(params[:user_id])
    render json: @user.posts.includes(:comments)
  end
end
