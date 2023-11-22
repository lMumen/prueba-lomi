class OrderDetail < ApplicationRecord
  belongs_to :cart
  has_one :client, through: :cart
  validates :quotes, numericality: { greater_than_or_equal_to: 0 }
end
