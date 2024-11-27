class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:movie)#Moviesモデルから映画情報を取得する
    "作品追加予定"
  end
end
