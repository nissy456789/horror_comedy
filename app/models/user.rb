class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews, dependent: :destroy#ユーザーが削除されたらレビューも削除される。
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_movies, through: :bookmarks, source: :movie#bookmarkテーブルを中間にしてuser.bookmark_moviesで取得できる。
  has_many :watcheds, dependent: :destroy
  has_many :watched_movies, through: :watcheds, source: :movie#watchedの中間テーブル。watched_moviesで取得できる。
  has_many :recommends, dependent: :destroy
  has_many :recommend_movies, through: :recommends, source: :movie

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
     devise :omniauthable, omniauth_providers: %i[google_oauth2]
  
    validates :uid, uniqueness: { scope: :provider, allow_nil: true  }

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

  def watch(movie) # 映画を観たリストに追加する
    watched_movies << movie
  end
  
  def unwatch(movie) # 映画を観たリストから削除する
    watched_movies.destroy(movie)
  end
  
  def watched?(movie) # 映画を観たか確認する（一覧表示等で使用できる）
    watched_movies.include?(movie)
  end

  #authオブジェクトによるユーザーの認証もしくは作成についてアクションを定義
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0,20]
    end
  end

end
