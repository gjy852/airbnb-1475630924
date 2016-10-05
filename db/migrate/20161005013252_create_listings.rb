class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :listing_title
      t.string :listing_description
      t.string :room_or_home
      t.integer :listing_photos_id
      t.string :num_of_bedroom
      t.string :num_of_bathroom
      t.string :number_of_beds
      t.string :max_occupant
      t.integer :city_id
      t.integer :neighbourhood_id
      t.integer :policies_id
      t.float :default_price
      t.integer :host_id

      t.timestamps

    end
  end
end
