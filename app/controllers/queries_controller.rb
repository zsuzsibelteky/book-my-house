class QueriesController < ApplicationController
  def new
  end

  def create
    @day = query_date
    @booked = Booking.booked_for?(@day)

    render :new
  end

  private

  def query_date
    Date.new(*params.require(:booking).permit(:day).to_h.map { |_, value| value.to_i })
  end
end
