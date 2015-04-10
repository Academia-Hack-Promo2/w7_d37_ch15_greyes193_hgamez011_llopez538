class CreateCharacterArmors < ActiveRecord::Migration
  def change
    create_table :character_armors do |t|
      t.references :character, index: true, foreign_key: true
      t.references :armor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
