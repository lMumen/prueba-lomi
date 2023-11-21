class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.references :client
      t.string :aasm_state
      t.timestamps
    end
  end
end
