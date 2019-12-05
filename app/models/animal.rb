class Animal < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  validates :species, :name, :location, :availability_start, :availability_end, :photo, presence: true
  SPECIES = ["Dog", "Cat", "Bird", "Hamster"]
  validates :species, inclusion: { in: SPECIES }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
