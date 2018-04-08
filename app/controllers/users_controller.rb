class UsersController < ApplicationController

  def show
    @tweets = Tweet.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
    @nickname =current_user.nickname 
  end
end
