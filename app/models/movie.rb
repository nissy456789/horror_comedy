class Movie < ApplicationRecord
  has_many :movie_categories

  # activeストーレージとアタッチする
  has_one_attached :image
end
