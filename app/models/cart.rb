class Cart < ApplicationRecord
  include AASM

  has_many :cart_items
  has_one :order_detail
  belongs_to :client

  aasm do
    state :buying, initial: true
    state :payed

    # Pay event is used to create the order detail and transitionate the cart to payed
    # it expect to receive two attributes, first a payment_method that it should be a string
    # describing the method used to pay the cart, and a optional attribute for the amount of quotes
    event :pay do
      transitions from: :buying, to: :payed, after: :create_order_detail
    end
  end

  # Creates a order detail for the cart
  # it expect to receive two attributes, first a payment_method that it should be a string
  # describing the method used to pay the cart, and a optional attribute for the amount of quotes
  def create_order_detail(payment_method, quotes = nil)
    quotes = 0 if quotes.blank?
    OrderDetail.create!(cart: self, payment_method: payment_method, quotes: quotes, total_amount: total_amount)
  end

  # Alias for the cart_items relation
  def items
    cart_items
  end

  # Creates a card item for the cart
  # it expects to receive a product_variant, and a optional attribute for the quantity of products
  # if the product varian is already an item of the cart, instead of create a new item,
  # it would increase its quantity, by default the quantity is 1
  def add_cart_item(product_variant: nil, quantity: 1)
    if products.include? product_variant
      item = items.find_by(product_variant_id: product_variant.id)
      new_quantity = item.quantity + quantity 
      item.update!(quantity: new_quantity )
      return item
    end
    CartItem.create!(cart: self, product_variant: product_variant, quantity: quantity)
  end

  # Calculates the total amount that the client should pay for the cart of products
  # iterates the cart_items and sum their price multiplyied by the quantity of items
  # Returns the total sum
  def total_amount
    total = 0
    items.each do |item|
      total += ( item.price * item.quantity )
    end
    total
  end

  # Returns the product_variants objects that are linked to the cart by its items
  def products
    items.map(&:product_variant)
  end

  # Returns the product_variants names that are linked to the cart by its items
  def product_names
    items.map do |item|
      item.product_variant.name
    end
  end
end
