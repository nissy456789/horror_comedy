class WatchedsController < ApplicationController
  def create
    @watched = current_user.watcheds.build(movie_id: params[:movie_id])
    if @watched.save
      redirect_to movie_path(params[:movie_id]), notice: '観たい！リストに追加しました。'
    else
      redirect_to movie_path(params[:movie_id]), alert: '登録に失敗しました。'
    end
  end

  def destroy
    @watched = current_user.watcheds.find_by(movie_id: params[:movie_id])
    if @watched&.destroy
      redirect_to movie_path(params[:movie_id]), notice: '観たい！リストから削除しました。'
    else
      redirect_to movie_path(params[:movie_id]), alert: '削除に失敗しました。'
    end
  end

  def ranking#movieテーブルとwatchedテーブルを結合してwatchedテーブルへ追加された映画の数を数える。
    @ranked_movies = Movie.joins(:watcheds)
                        .group('movies.id')
                        .order('COUNT(watcheds.id) DESC')
                        .select('movies.*, COUNT(watcheds.id) as watched_count')
  end

end
