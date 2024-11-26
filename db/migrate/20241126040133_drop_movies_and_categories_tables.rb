class DropMoviesAndCategoriesTables < ActiveRecord::Migration[7.1]
  def up
    drop_table :movies if ActiveRecord::Base.connection.table_exists?(:movies)
    drop_table :categories if ActiveRecord::Base.connection.table_exists?(:categories) #Categoryのスペルミス
  end
end
