class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.integer :vitality1, limit: 6
      t.integer :vitality2, limit: 6
      t.integer :winner
      t.boolean :retired
      t.integer :character1_id
      t.integer :character2_id

      t.timestamps null: false
    end
    add_foreign_key :fights, :characters, column: :character1_id
    add_foreign_key :fights, :characters, column: :character2_id
  end
end
