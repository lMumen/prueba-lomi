class AddEmailAndPhoneNumberToClient < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :email, :string
    add_column :clients, :phone_number, :string
  end
end
