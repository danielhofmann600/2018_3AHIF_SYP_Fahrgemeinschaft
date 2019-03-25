class Trip < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :driver_id
      t.integer :passenger_id
      t.integer :route_id
    end
  end
end
