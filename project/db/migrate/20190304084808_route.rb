class Route < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :destination
      t.string :departure
      t.float :kilometers
    end
  end
end
