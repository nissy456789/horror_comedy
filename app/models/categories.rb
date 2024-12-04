class Categories < ApplicationRecord
  has_many :movie_categories
  has_one_attached :name
end
