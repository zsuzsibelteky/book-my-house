class BookingsController < ApplicationController
  def index
    @date = query_date
    @booked = Booking.booked_for?(@date) if @date.present?
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:day)
  end

  def query_date
    Date.new(*params.require(:booking).permit(:day).to_h.map { |_, value| value.to_i }) rescue nil
  end
end
