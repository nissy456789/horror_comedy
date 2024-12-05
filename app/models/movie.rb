class Movie < ApplicationRecord
#activeストーレージと関連付けする(複数の画像をアタッチするため以下のコードである)
  has_many_attached :images

  has_many :movie_categories


end
