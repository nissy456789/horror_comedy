class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews

  #自分のレビューか確認する
  def own?(object)
    id == object&.user_id
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
