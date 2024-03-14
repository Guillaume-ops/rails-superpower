class Superpower < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :name, presence: true
  validates :category, presence: true
  has_one_attached :photo
end
