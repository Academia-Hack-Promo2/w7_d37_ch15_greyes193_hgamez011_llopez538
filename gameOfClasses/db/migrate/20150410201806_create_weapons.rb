class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :wType
      t.integer :damage, limit: 4
      t.integer :defence, limit: 3
      t.integer :price, limit: 4

      t.timestamps null: false
    end
  end
end
