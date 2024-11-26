class MovieCategory < ApplicationRecord
  belongs_to :movie
  belongs_to :categorys
end
