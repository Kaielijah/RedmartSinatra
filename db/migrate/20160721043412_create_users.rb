class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name, null:false
      t.string :email, null:false
      t.integer :password, null:false
      t.integer :cc_number, null:false
      t.integer :address, null:false
      t.timestamps
  end
end
end
