class TweetsController < ApplicationController

  before_action :move_to_index, except: :index
  def index
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Tweet.create(name: params[:name], image:tweet_params[:image], text: tweet_params[:text], user_id: tweet_current_user.id)
  end

  private
  def tweet_params
    params.permit(:name, :image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_singed_in?
  end

end
