class HousesController < ApplicationController

  def show
    @house = House.find_by(id: params[:id])
    @bookings = Booking.order(day: order_direction).where('house_id = ?', @house.id)

    @order = params[:revers] == "1" ? "0" : "1"
  end

  private

  def order_direction
    params[:revers] == "1" ? :desc : :asc
  end
end
