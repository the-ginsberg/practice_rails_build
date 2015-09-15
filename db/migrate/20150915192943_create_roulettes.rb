class CreateRoulettes < ActiveRecord::Migration
  def change
    create_table :roulettes do |t|

      t.timestamps null: false
    end
  end
end
