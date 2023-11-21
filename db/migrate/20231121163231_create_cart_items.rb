class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.references :cart
      t.references :product_variant
      t.timestamps
    end
  end
end
