class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  validates_presence_of :comment, :restaurant, :user
end
