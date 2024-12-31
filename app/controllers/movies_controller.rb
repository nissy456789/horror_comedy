class MoviesController < ApplicationController
  
  def index
    @movies = Movie.select(:id, :avatar).distinct
  end

  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
    @reviews = @movie.reviews.includes(:user).order(created_at: :desc)
  end

end
