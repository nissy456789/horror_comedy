class MoviesController < ApplicationController
  def index
    @movies = Movie.select(:id, :avatar) # id と avatar カラムだけを取得
  end
  def show
    @movie = Movie.find(params[:id])
  end
end
