class AddInformationToRoulette < ActiveRecord::Migration
  def change
    add_column :roulettes, :player, :string
    add_column :roulettes, :bullet_loc, :integer
    add_column :roulettes, :round, :integer
    add_column :roulettes, :alive, :boolean
  end
end
