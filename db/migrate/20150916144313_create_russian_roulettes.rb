class CreateRussianRoulettes < ActiveRecord::Migration
  def change
    create_table :russian_roulettes do |t|
      t.string :player
      t.integer :bulloc
      t.integer :round
      t.boolean :alive

      t.timestamps null: false
    end
  end
end
