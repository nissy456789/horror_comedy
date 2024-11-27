class CreateMovieCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :movie_categories do |t|
      t.references :movie, foreign_key: true
      t.references :categories, foreign_key: true

      t.timestamps
    end
  end
end
