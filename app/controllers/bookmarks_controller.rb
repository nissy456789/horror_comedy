class BookmarksController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    if current_user.bookmark(@movie)
      flash[:success] = '観たい一覧へ追加されました'
    else
      flash[:error] = 'なんかダメっぽい...' # 失敗時のメッセージ
    end
  end
      
  def destroy
    movie = Movie.find(params[:movie_id])
    if current_user.unbookmark(@movie)
      flash[:success] = '観たい！から削除しました'
    else
      flash[:error] = 'なんかダメっぽい...' # 失敗時のメッセージ
  end
end
