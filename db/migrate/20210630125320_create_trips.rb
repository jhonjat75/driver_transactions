class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.integer :driver_id
      t.integer :rider_id
      t.float :long_start
      t.float :lat_start
      t.float :long_final
      t.float :lat_final
      t.integer :distance
      t.integer :time
      t.integer :price
      t.string :pay_reference
      t.string :wompi_reference
      t.boolean :pay
      t.boolean :stop
    end
  end
end
