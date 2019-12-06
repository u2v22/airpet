class Review < ApplicationRecord
  belongs_to :animal

  RATING = [1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING }
  validates :description, length: { minimum: 5 }
  validates :description, :rating, presence: true
end
