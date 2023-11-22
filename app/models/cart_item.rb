class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product_variant
  validates :quantity, numericality: { greater_than: 0 }

  # Aliast to get the price of the product variant related to the cart item
  def price
    product_variant.price
  end
end
