class Review < ApplicationRecord
  belongs_to :animal
  validates :description, :rating, presence: true
  RATING = [1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING }
end
