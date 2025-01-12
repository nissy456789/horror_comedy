class CreateRecommends < ActiveRecord::Migration[7.1]
  def change
    create_table :recommends do |t|
      t.references :user, foreign_key: true, null: false
      t.references :movie, foreign_key: true, null: false
      t.references :bookmark, foreign_key: true, null: false

      t.timestamps
    end
  end
end
