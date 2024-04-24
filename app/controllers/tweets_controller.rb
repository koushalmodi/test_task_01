class TweetsController < ApplicationController
  def new
    @tweet = current_user.tweets.new
  end

  def create
    @tweet = current_user.tweets.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    if @tweet.destroy
      redirect_to root_path
    end
  end

  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to root_path
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
    redirect_to root_path
  end
  private

  def tweet_params
    params.permit(:description, :post)
  end
end
