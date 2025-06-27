class MoviesController < ApplicationController

  def index
    search_movies
    @movies = @q.result(distinct: true).page(params[:page]).per(6)
  end

  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
    @reviews = @movie.reviews.includes(:user).order(created_at: :desc)
  end

  def new 
    @movie = current_user.movies.build
  end

  def create
    @movie = current_user.movies.build(movie_params)
  end

  private

  def require_login
    unless logged_in?
      redirect_to login_path, alert: "ログインしてください"
    end
  end

  def search_movies
    @q = Movie.ransack(params[:q])
  end

  def bookmarks
    @bookmark_movies = current_user.bookmark_movies.includes(:user)
  end
end
