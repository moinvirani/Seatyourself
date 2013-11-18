class Reservation < ActiveRecord::Base
	include ActionView::Helpers:textHelper # for pluralize method used below
  
	validates :people, :numericality => { :only_integer => true, :greater_than => 0, :less_than => 500}
	validates :restaurant_must_be_within_capacity

 	belongs_to :restaurant
  	belongs_to :user

  	def restaurant_must_be_within_capacity
  		unless self.restaurant.is_available?(self.begin_time, self.people)
  			errors.add(:begin_time, "is not available for " + pluralize(self.people, "person"))
  		end
  	end
end
