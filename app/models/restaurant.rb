class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { minimum: 5 }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  #enum category: { chinese: 1, italian: 2, japanese: 3, french: 4, belgian: 5 }
end
