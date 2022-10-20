class LikesController < ApplicationController
  def create
    @user = User.new(
      user_id: @current_user.id,
      post_id: params[:post_id]
    )
    @like.save
    redirect_to("/posts/#{params[:post_id]}")
  end
end
