class DropCategorysTables < ActiveRecord::Migration[7.1]
  def up
    drop_table :categorys if ActiveRecord::Base.connection.table_exists?(:categorys)
  end
end
