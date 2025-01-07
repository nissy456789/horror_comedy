class Movie < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_many :movie_categories
  has_many :reviews, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  private

  def self.ransackable_attributes(auth_object = nil)#決められた情報しか検索しない
    ["avatar", "description", "id", "id_value", "title"]
  end
end
