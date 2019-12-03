class Animal < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :species, :name, :availability, :location, :photo, presence: true
  SPECIES = ["dog", "cat", "bird", "hamster"]
  validates :species, inclusion: { in: SPECIES }
end
