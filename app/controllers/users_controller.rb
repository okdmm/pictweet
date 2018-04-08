class UsersController < ApplicationController

  def show
    @tweets = current_user.tweets.page(params[:page]).per(5).order("created_at DESC")
    @nickname =current_user.nickname 
  end
end
