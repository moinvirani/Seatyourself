class AddPhotoToRestaurants < ActiveRecord::Migration
  def self.up
    add_attachment :restaurants, :photo 
  end

  def self.down
    remove_attachment :restaurants, :photo
  end
end
