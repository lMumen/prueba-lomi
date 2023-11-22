class Client < ApplicationRecord
  has_many :carts

  # it returns the first_name and last_name in a same String separated by a empty space
  def full_name
    "#{first_name} #{last_name}"
  end
end
