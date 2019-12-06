class Animal < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :species, :name, :location, :availability_start, :availability_end, :photo, presence: true
  SPECIES = ["Dog", "Cat", "Bird", "Hamster"]
  validates :species, inclusion: { in: SPECIES }

  geocoded_by :location
  mount_uploader :photo, PhotoUploader

  after_validation :geocode, if: :will_save_change_to_location?
end
