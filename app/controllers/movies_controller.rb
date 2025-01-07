class MoviesController < ApplicationController

  def index
    search_movies
    @movies = @q.result(distinct: true)
  end

  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
    @reviews = @movie.reviews.includes(:user).order(created_at: :desc)
  end

  private

  def search_movies
    @q = Movie.ransack(params[:q])
  end

  def bookmarks
    @bookmark_movies = current_user.bookmark_movies.includes(:user)
  end
end
