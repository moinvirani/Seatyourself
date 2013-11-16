# == Schema Information
 	# t.string   "name"
  #   t.string   "email"
  #   t.string   "neighbourhood"
  #   t.text     "description"
  #   t.string   "price"
  #   t.string   "hours"
  #   t.string   "address"
  #   t.string   "phone"
  #   t.string   "category"
  #   t.integer  "capacity"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"

class Restaurant < ActiveRecord::Base

	# attr_accessible :name, :email, :neighbourhood, :description, :price, :hours, :address, :phone, :category, :capacity

	validates :name, :description, :address, :phone, :presence => true
	validates :integer, numericality: {only_integer: true}
	
	
end
