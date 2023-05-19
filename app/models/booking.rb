class Booking < ApplicationRecord
  belongs_to :house

  validates :day, presence: true, uniqueness: true

  validates :number_of_guests, numericality: {less_than: 9}
  validates :number_of_guests, numericality: {greater_than: 0}
  validates :number_of_guests, numericality: {message: "must be between 1 and 8!"}

  scope :ordered, -> { order(:day) }

  def self.booked_for?(date)
    where(day: date).present?
  end
end
