class Movie_Categories < ApplicationRecord
  belongs_to :movie
  belongs_to :categories
end
