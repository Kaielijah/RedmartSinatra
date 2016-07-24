class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :user, null:false
      t.references :products, null:false
      t.boolean :status, null:false

      t.timestamps
    end
  end
end
