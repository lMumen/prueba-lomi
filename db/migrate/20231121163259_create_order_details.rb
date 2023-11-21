class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.references :cart
      t.string :payment_method
      t.float :total_amount
      t.integer :quotes
      t.timestamps
    end
  end
end
