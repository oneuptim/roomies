class Room < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reservations

  geocoded_by :address
  # Only update geocde after validations pass and only if address has changed.
  after_validation :geocode, if: :address_changed?


  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :accommodate, presence: true
  validates :bed_room, presence: true
  validates :bath_room, presence: true
  validates :listing_name, presence: true, length: {maximum: 50}
  validates :summary, presence: true, length: {maximum: 500}
  validates :address, presence: true

end
