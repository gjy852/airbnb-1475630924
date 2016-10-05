class CreateGuestReviews < ActiveRecord::Migration
  def change
    create_table :guest_reviews do |t|
      t.date :create_guest_review_date
      t.integer :request_id
      t.string :rating
      t.text :review_text

      t.timestamps

    end
  end
end
