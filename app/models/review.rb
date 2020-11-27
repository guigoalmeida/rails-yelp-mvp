class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, presence: true
  validates :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, numericality: { less_than_or_equal_to: 5 }

  # criar controller review
  # criar controller restaurant
  # mudar campo telefone do restaurant para string
  # criar campo restaurant_id no review
end
