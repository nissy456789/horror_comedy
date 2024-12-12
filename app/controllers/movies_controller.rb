class MoviesController < ApplicationController
  def index
    @movies = Movie.all#Moviesモデルから映画情報を取得する

  end
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :avatar)
  end
end
