class BookmarksController < ApplicationController
  def create
    @bookmark = current_user.bookmarks.build(movie_id: params[:movie_id])
    if @bookmark.save
      redirect_to movie_path(params[:movie_id]), notice: '観たいリストに追加しました。'
    else
      redirect_to movie_path(params[:movie_id]), alert: '登録に失敗しました。'
    end
  end
      
  def destroy
    @bookmark = current_user.bookmarks.find_by(movie_id: params[:movie_id])
    if @bookmark&.destroy
      redirect_to movie_path(params[:movie_id]), notice: '観たいリストから削除しました。'
    else
      redirect_to movie_path(params[:movie_id]), alert: '削除に失敗しました。'
    end
  end

  def index
    if current_user.nil?
      return # 画面遷移せずに処理を終了
    end
  
    @bookmarked_movies = current_user.bookmarks.includes(:movie)
  end

end
