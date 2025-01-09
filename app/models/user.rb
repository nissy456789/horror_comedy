class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews, dependent: :destroy#ユーザーが削除されたらレビューも削除される。
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_movies, through: :bookmarks, source: :movie#bookmarkテーブルを中間にしてuser.bookmark_moviesで取得できる。
  has_many :watcheds, dependent: :destroy

  #自分のレビューか確認する
  def own?(object)
    id == object&.user_id
  end

  def bookmark(movie)#ブックマークを追加する
    bookmark_movies << movie
  end
  
  def unbookmark(movie)#ブックマークを削除する
    bookmark_movies.destroy(movie)
  end
  
  def bookmark?(movie)#ブックマークしているか確認する（一覧表示等で使用できる）
    bookmark_movies.include?(movie)
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
