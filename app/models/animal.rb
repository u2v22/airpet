class Animal < ApplicationRecord
  belongs_to :user
  validates :species, :name, :availability, :location, :photo, presence: true
  SPECIES = ["dog", "cat", "bird", "hamster"]
  validates :species, inclusion: { in: SPECIES }
end
