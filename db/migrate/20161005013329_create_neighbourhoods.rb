class CreateNeighbourhoods < ActiveRecord::Migration
  def change
    create_table :neighbourhoods do |t|
      t.string :neighbourhoods_list
      t.integer :city_id

      t.timestamps

    end
  end
end
