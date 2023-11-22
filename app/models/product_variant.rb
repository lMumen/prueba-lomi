class ProductVariant < ApplicationRecord
  belongs_to :product

  # Returns the product name and the complement of the product variant in a single String
  def name
    "#{product.name} #{complement}"
  end
end
