class UsersController < ApplicationController

  def show
    @tweets = Tweet.where(user_id: current_user:id).per(5).order("created DESC")
    @nickname =current_user.nickname 
  end
end
