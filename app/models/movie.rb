class Movie < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_many :movie_categories
  has_many :reviews

  private

  def self.ransackable_attributes(auth_object = nil)
    ["avatar", "description", "id", "id_value", "title"]
  end
end
