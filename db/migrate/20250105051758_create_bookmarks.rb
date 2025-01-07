class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.references :user, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
    add_index :bookmarks, [:user_id, :movie_id], unique: true#重複したデータを防ぎつつ検索処理の向上
  end
end
