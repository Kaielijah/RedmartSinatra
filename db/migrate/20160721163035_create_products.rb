class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
        t.string :name, null:false
        t.string :description, null:false
        t.integer :price, null:false, precision:10, scale:2
        t.timestamps
      end
  end
end
