class ReviewsController < ApplicationController
  def create#レビュー作成
    review = Movie.reviews.build(review_params)
    if review.save
      redirect_to movie_path(review.movie), success: '投稿してくれてありがとう！', item: Review.model_name.human)
    else
      redirect_to movie_path(review.movie), danger: 'ごめん！投稿できてないみたい！', item: Review.model_name.human)
    end
  end

  private

  def review_params
    params.require(:review).permit(:content).merge(movie_id: params[:movie_id])
  end

end
