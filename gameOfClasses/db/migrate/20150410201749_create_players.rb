class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name, limit: 20
      t.integer :age, limit: 2
      t.integer :vitality, limit: 6
      t.integer :lifePoints, limit: 6
      t.string :hability
      t.integer :defPoints, limit: 4
      t.integer :atkPoints, limit: 4

      t.timestamps null: false
    end
  end
end
