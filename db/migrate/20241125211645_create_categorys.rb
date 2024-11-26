class CreateCategorys < ActiveRecord::Migration[7.1]
  def change
    create_table :categorys do |t|
      t.string :name, null: false
    end
  end
end
