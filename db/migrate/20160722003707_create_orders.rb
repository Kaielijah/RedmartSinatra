class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :order_date, null:false
      t.integer :users_id, null:false
      t.string :category_name, null:false
      t.integer :products_id, null:false
      t.string :products_description, null:false 

      t.timestamps
    end
  end
end
