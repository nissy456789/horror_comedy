class AddAvatarToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :avatar, :string
  end
end
