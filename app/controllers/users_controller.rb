class UsersController < ApplicationController
  def show
    @user = current_user
    @reviews = @user.reviews
  end
end
