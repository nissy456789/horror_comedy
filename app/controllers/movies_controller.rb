class MoviesController < ApplicationController
  def index
    @movies = Movie.select(:id, :avatar).distinct.limit(3)
  end

  def show
    @movie = Movie.find(params[:id])#映画の詳細画面内にレビューを表示させたいから。
    @review = Review.new
    @reviews = @movie.reviews.includes(:user).order(created_at: :desc)
  end
end
