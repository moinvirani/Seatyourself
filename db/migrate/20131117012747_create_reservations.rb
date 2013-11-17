class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :begin_time
      t.references :restaurant
      t.references :user
      t.text :notes
      t.integer :people, :default => 1

      t.timestamps
    end
    add_index :reservations, :restaurant_id
    add_index :reservations, :user_id
  end
end
