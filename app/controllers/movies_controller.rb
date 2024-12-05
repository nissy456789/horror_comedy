class MoviesController < ApplicationController
  def index
    @movies = Movie.all#Moviesモデルから映画情報を取得する

  end
end
