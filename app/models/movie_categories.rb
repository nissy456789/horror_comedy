class Movie_categories < ApplicationRecord
  belongs_to :movie
  belongs_to :categories
end
