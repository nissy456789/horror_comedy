class RecommendsController < ApplicationController
  before_action :set_recommend_movies, only: %i[index recommend_explanation]

  def index; end
  def recommend_explanation; end
  private

  # レコメンドを設定する
  def set_recommend_movies   
    @recommend_movies = recommend_movies
  end

  #類似ユーザーを探す
  def similar_users
    bookmarked_movie_ids = current_user.bookmarks_movie.pluck(:movie_id)
    similar_user_ids = Bookmark.where(movie_id: bookmarked_movie_ids)
                               .where.not(user_id: current_user.id)
                               .distinct.pluck(:user_id)
    User.where(id: similar_user_ids)
  end

  #類似ユーザーのブックマークから映画を提案する 
  def recommend_movies

    if current_user.nil?
      return # 画面遷移せずに処理を終了
    end
  
    bookmarked_movie_ids = current_user.bookmark_movies.pluck(:movie_id)
    similar_users = similar_users
  
    if similar_users.present?
      similar_user_movie_ids = Bookmark.where(user_id: similar_users.ids)
                                        .where.not(movie_id: bookmarked_movie_ids)
                                        .distinct.pluck(:movie_id)
    else
      similar_user_movie_ids = []
    end
  
    # 推薦映画のIDを取得
    recommended_movie_ids = Movie.where(id: similar_user_movie_ids)
                                   .where.not(id: bookmarked_movie_ids)
                                   .where.not(id: Recommend.where(user_id: current_user)
                                                           .distinct.pluck(:movie_id)).pluck(:id)
  
    # レコメンドがない場合は全作品から3つ取得
    if recommended_movie_ids.empty?
      Movie.all.sample(3) 
    else
      Movie.where(id: recommended_movie_ids).sample(3)
    end
  end
end
