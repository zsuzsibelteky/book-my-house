class Booking < ApplicationRecord
  validates :day, presence: true, uniqueness: true

  def self.booked_for?(date)
    where(day: date).present?
  end
end
