class CreateAttacks < ActiveRecord::Migration
  def change
    create_table :attacks do |t|
      t.string :aType
      t.string :name
      t.integer :damage, limit: 4
      t.references :character, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
