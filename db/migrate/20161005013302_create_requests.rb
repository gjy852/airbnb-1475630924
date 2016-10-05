class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :requestor_id
      t.text :request_text
      t.date :request_sent_date
      t.date :request_accept_date
      t.date :availability_date

      t.timestamps

    end
  end
end
