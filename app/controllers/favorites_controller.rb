class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    user = User.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = '投稿をお気に入りしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = '投稿のお気に入りを解除しました。'
    redirect_to user
  end
end
