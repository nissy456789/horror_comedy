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
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])  # IDでレビューを検索する

    if @review.update(review_params)     # ストロングパラメータを使って更新
      redirect_to movie_path(@movie), notice: 'レビューが更新されました！'  # 更新成功時のリダイレクト
    else
      render :edit  # 更新失敗時は編集画面を再表示する
    end
  end

  def destroy#映画とレビューのIDを取得することで対象物を明確にする
    @movie = Movie.find(params[:movie_id])
    @review = current_user.reviews.find(params[:id])
    @review.destroy!

    if @review.destroy
      flash[:notice] = "レビューを削除しました。"
      redirect_to movie_path(@movie)
    else
      flash[:alert] = "レビューの削除に失敗しました。"
      redirect_to movie_path(@movie)
    end
  end

  def index
    @reviews = Review.where(user_id: current_user.id).select('DISTINCT ON (body) *') # ログインしているユーザーの投稿した重複のないレビュー取得
  end

  private

  def review_params
    params.require(:review).permit(:body, :user_id, :user_name).merge(movie_id: params[:movie_id])
  end

end
