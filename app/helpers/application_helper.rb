module ApplicationHelper
  def booking_info(booked)
    return '' if booked.nil?

    if booked
      'The house is booked for the selected day :('
    else
      'Yay! You can book the house on the selected day!'
    end
  end
end
