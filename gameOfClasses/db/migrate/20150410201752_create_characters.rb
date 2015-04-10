class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :pType, limit: 1
      t.integer :vitality, limit: 6
      t.integer :lifePoints, limit: 6
      t.string :hability
      t.integer :level, limit: 2
      t.integer :defPoints, limit: 4
      t.integer :atkPoints, limit: 4
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
