class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_name, null:false
      t.string :sub_category, null:false
      t.string :grocery, null:false

      t.timestamps
    end
  end
end
