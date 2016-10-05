class CreateListingReviews < ActiveRecord::Migration
  def change
    create_table :listing_reviews do |t|
      t.date :create_listing_review_date
      t.integer :reservations_id
      t.integer :listing_review_accuracy
      t.integer :listing_review_communication
      t.integer :listing_review_cleanliness
      t.integer :listing_review_location
      t.integer :listing_review_check_in
      t.integer :listing_review_value
      t.text :listing_review_text
      t.integer :listing_id

      t.timestamps

    end
  end
end
