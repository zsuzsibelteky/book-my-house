class BookingsController < ApplicationController
  def index
    @pagy, @bookings = pagy(Booking.all.ordered, items_extra: true)
    #@bookings = Booking.all.ordered
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:day, :house_id)
  end
end
