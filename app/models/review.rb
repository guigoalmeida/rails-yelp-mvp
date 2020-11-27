class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, presence: true
  validates :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }

  # criar controller review
  # criar controller restaurant
  # mudar campo telefone do restaurant para string
  # criar campo restaurant_id no review
end
