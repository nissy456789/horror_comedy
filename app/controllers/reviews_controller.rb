class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    review = current_user.reviews.build(review_params)
    review.movie_id = params[:movie_id]
    if review.save
      redirect_to movie_path(review.movie), success: '投稿してくれてありがとう！'
    else
      redirect_to movie_path(review.movie), danger: '投稿に失敗しました。'
    end
  end

  def edit
    @movies = Movie.find(params[:movie_id])
    @reviews = Review.find(params[:id])
  end

  def update
    @movies = Movie.find(params[:movie_id])
    @reviews = Review.find(params[:id])  # IDでレビューを検索する

    if @review.update(review_params)     # ストロングパラメータを使って更新
      redirect_to @review, notice: 'レビューが更新されました！'  # 更新成功時のリダイレクト
    else
      render :edit  # 更新失敗時は編集画面を再表示する
    end
  end

  private

  def review_params
    params.require(:review).permit(:body, :user_id, :user_name).merge(movie_id: params[:movie_id])
  end

end
