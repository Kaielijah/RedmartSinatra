class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.integer :product_id, null:false
      t.string :product_name, null:false
      t.string :product_category, null:false
      t.integer :product_cost_per_unit, precision:10, scale:2
      t.string :product_supplier, null:false
      t.string :description, null:false
      t.timestamps
    end
  end
end
