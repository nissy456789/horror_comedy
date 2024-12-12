class MoviesController < ApplicationController
  def index
    @movies = Movie.select(:id, :avatar).distinct
  end
  def show
    @movie = Movie.find(params[:id])
  end
end
