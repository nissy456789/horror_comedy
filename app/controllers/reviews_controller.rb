class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    review = current_user.reviews.build(review_params)
    if review.save
      redirect_to movie_path(review.movie), success: '投稿してくれてありがとう！'
    else
      redirect_to movie_path(review.movie), danger: '投稿に失敗しました。'
    end
  end

  private

  def review_params
    params.require(:review).permit(:body, :user_id, :user_name).merge(movie_id: params[:movie_id])
  end

end
