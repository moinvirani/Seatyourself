class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation.user_id = current_user.id
    # @reservation = @restaurant.reservations.build
    if @reservation.save
      redirect_to restaurants_path(@restaurant)
      
    else
      render :action => :show, notice: "Restaurant is on fire!!"
      
    end
  end
 
 def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end


  private
  def reservation_params
    params.require(:reservation).permit(:begin_time, :restaurant_id, :user_id, :notes, :people)
  end

end
