class MoviesController < ApplicationController
  require 'themoviedb-api'
  Tmdb::Api.key(841e56c5caeb10709f58e685aef48333)
  Tmdb::Api.language("ja") # こちらで映画情報の表示の際の言語設定を日本語にできます

  def search
  end

  def index
    @movies = Movie.select(:id, :avatar).distinct.limit(3)
  end

  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
    @reviews = @movie.reviews.includes(:user).order(created_at: :desc)
  end

end
