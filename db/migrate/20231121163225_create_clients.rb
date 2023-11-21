class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :rut
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end
