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
    @movie = Movie.new
  end

  def create
    @movie = current_user.movies.build(movie_params) # ← build（user_id付きインスタンス生成）
    if @movie.save                                   # ← save（DB保存）
      redirect_to movies_path
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :avatar, :surprise_level, :gore_level)
  end

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
