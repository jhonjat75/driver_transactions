class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :driver_id
      t.integer :rider_id
    end
  end
end
