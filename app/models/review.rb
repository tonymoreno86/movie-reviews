class Review < ApplicationRecord
  belongs_to :movie

  validates_presence_of :name

  validates :comment, length: { minimum: 4 }

  STARS = [1,2,3,4,5]

  validates :stars, inclusion: { in: STARS, message: "must be between 1 and 5" }
end
