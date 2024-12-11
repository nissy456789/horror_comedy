class Movie < ApplicationRecord
  mount_uploader :avatar, AvatarUploader # `avatar`カラムをCarrierWaveに関連付け
  has_many :movie_categories


end
