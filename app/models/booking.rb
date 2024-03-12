# app/models/booking.rb
class Booking < ApplicationRecord
  belongs_to :superpower
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date <= start_date
      errors.add(:end_date, "la date entrée est antérieur à la date de réservation")
    end
  end
end
