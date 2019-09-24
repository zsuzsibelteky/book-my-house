class QueriesController < ApplicationController
  def create
    @booked = Booking.booked_for?(query_date)
  end

  private

  def query_date
    Date.new(*params.require(:booking).permit(:day).to_h.map { |_, value| value.to_i })
  end
end
