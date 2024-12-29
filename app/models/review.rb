class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :body, presence: true, uniqueness: { scope: :user_id, message: "は既に存在します" }

end
