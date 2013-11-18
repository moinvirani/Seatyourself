
class Restaurant < ActiveRecord::Base

	# attr_accessible :name, :email, :neighbourhood, :description, :price, :hours, :address, :phone, :category, :capacity

	validates :name, :description, :address, :phone, :presence => true
	# validates :integer, numericality: {only_integer: true}
	
  belongs_to :category #not being used yet
  has_many   :reservations

  def opening_hour
    11 # 11:00 AM
  end

  def closing_hour
    20  # 8:00 PM
  end
	
  
end
