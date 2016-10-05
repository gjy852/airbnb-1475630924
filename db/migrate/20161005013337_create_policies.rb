class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.integer :listing_id
      t.string :policies

      t.timestamps

    end
  end
end
