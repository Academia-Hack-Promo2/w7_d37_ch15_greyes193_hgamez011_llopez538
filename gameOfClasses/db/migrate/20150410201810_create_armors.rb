class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors do |t|
      t.string :name
      t.integer :pType, limit: 1
      t.string :wType
      t.integer :damage, limit: 3
      t.integer :defence, limit: 4
      t.integer :price, limit: 4

      t.timestamps null: false
    end
  end
end
