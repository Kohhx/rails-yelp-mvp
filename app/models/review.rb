class Review < ApplicationRecord
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, acceptance: { accept: 0..5 }

  belongs_to :restaurant
end
