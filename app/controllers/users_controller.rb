class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets.page(params[:page]).per(5).order("cerated_at DESC")
  end
end
