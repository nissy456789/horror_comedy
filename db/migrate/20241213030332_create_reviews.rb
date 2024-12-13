class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :movie_id
      t.text :body

      t.timestamps
    end
  end
end