class Movie < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_many :movie_categories
  has_many :reviews

end
