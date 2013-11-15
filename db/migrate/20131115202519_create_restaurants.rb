class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :neighbourhood
      t.text :description
      t.integer :price_in_cents
      t.string :hours
      t.string :city
      t.string :phone
      t.string :category

      t.timestamps
    end
  end
end
