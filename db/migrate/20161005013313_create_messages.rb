class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :initiated_by_id
      t.integer :recipient_id
      t.string :message_text
      t.date :message_created_date
      t.date :message_edited_date
      t.integer :listing_id

      t.timestamps

    end
  end
end
