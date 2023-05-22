class StatisticsController < ApplicationController
  def show
    @most_popular_house = House.find(Booking.group(:house_id)
                                            .order('COUNT(id)')
                                            .last.house_id)
    @most_successful_year = Booking.group_by_year(:created_at, format: "%Y")
                                   .order('COUNT(id)')
                                   .last
                                   .created_at.year
  end
end
