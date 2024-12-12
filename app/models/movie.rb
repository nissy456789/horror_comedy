class Movie < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_many :movie_categories


end
