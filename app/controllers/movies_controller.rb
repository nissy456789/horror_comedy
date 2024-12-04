class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:movie)#Moviesモデルから映画情報を取得する

  end
end
