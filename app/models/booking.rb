# app/models/booking.rb
class Booking < ApplicationRecord
  belongs_to :superpower
  belongs_to :user

  validates :date_begin, presence: true
  validates :date_end, presence: true
  #validate :date_end_after_date_begin

  #private

  # def end_date_after_start_date
  #   return if date_end.blank? || date_begin.blank?

  #   if date_end <= date_begin
  #     errors.add(:end_date, "la date entrée est antérieur à la date de réservation")
  #   end
  # end
end
