class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, length: { maximum: 50 }
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
