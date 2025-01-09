class CreateWatcheds < ActiveRecord::Migration[7.1]
  def change
    create_table :watcheds do |t|
      t.references :user, foreign_key: true, null: false
      t.references :movie, foreign_key: true, null: false

      t.timestamps
    end
  end
end
