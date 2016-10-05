class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :host
      t.string :guest

      t.timestamps

    end
  end
end
