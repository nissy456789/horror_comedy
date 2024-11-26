class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.integer :image, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
