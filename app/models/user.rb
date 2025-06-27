class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :movies, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_movies, through: :bookmarks, source: :movie
  has_many :watcheds, dependent: :destroy
  has_many :watched_movies, through: :watcheds, source: :movie
  has_many :recommends, dependent: :destroy
  has_many :recommend_movies, through: :recommends, source: :movie

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
     devise :omniauthable, omniauth_providers: %i[google_oauth2]
  
    validates :uid, uniqueness: { scope: :provider, allow_nil: true  }


  def own?(object)
    id == object&.user_id
  end

  def bookmark(movie)
    bookmark_movies << movie
  end
  
  def unbookmark(movie)
    bookmark_movies.destroy(movie)
  end
  
  def bookmark?(movie)
    bookmark_movies.include?(movie)
  end

  def watch(movie)
    watched_movies << movie
  end
  
  def unwatch(movie)
    watched_movies.destroy(movie)
  end
  
  def watched?(movie)
    watched_movies.include?(movie)
  end


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0,20]
    end
  end

end
