class TweetsController < ApplicationController

  def index
    @tweets = TWeet.all
  end
end
