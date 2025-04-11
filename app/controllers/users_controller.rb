class UsersController < ApplicationController
  def show
    @user = current_user
    @reviews = @user.reviews
  end

  def edit 
    @user = current_user.User.find(params[:id])
  end
end
