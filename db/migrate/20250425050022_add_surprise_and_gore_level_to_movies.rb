class AddSurpriseAndGoreLevelToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :surprise_level, :integer
    add_column :movies, :gore_level, :integer
  end
end
