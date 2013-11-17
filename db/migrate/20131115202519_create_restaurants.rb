class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|

      t.string :name
      t.string :email
      t.string :neighbourhood
      t.text :description
      t.string :price
      t.string :hours
      t.string :address
      t.string :phone
      t.references :category
      t.integer :capacity, :default => 100

      t.timestamps
    end
    add_index :restaurants, :category_id
  end
end
