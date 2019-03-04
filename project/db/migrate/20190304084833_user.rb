class User < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :firstName
      t.string :lastName
      t.string :password
      t.boolean :isDriver
      t.string :departureTime
      #t.int :routes TODO
    end
  end
end
