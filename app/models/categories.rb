class Categories < ApplicationRecord
  has_many_attached :names

  has_many :movie_categories

end
