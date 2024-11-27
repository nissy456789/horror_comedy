class movie_categories < ApplicationRecord
  belongs_to :movie
  belongs_to :categories
end
