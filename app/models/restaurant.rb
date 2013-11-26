
class Restaurant < ActiveRecord::Base

	# attr_accessible :name, :email, :neighbourhood, :description, :price, :hours, :address, :phone, :category, :capacity

	validates :name, :description, :address, :phone, :presence => true
	# validates :integer, numericality: {only_integer: true}
	
  belongs_to :category 
  has_many   :reservations
  has_many    :reviews  

  def opening_hour
    11 # 11:00 AM
  end

  def closing_hour
    20  # 8:00 PM
  end
	
  has_attached_file :photo, styles: {
    thumb: '200x200#',
    large: '400x600>'
  }

  # def availibilty?
  #   peeps = self.reservations.where 
  #   (start_time: reservation.start_time).sum(:people)
  #   (peeps + reservation.people) < capacity
  # end
end
