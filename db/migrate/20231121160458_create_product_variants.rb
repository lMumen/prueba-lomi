class CreateProductVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variants do |t|
      t.references :product
      t.string :complement
      t.float :price
      t.timestamps
    end
  end
end
