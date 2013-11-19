class ReservationsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restuarant_id])
    @reservation = @restaurant.reservations.build
    if @reservation.save
      # do something
    else
      # soemthon
    end
  end

end
