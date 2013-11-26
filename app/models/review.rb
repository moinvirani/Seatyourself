class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  validates_presence_of :comment, :product, :user
end
