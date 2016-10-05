class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :availability_date
      t.string :availability_price
      t.integer :listing_id
      t.integer :booked_yes_or_no_id

      t.timestamps

    end
  end
end
