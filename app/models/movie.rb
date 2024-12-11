class Movie < ApplicationRecord
  # mount_uploader :avatar, AvatarUploader # コメントアウトまたは削除
  has_many :movie_categories


end
