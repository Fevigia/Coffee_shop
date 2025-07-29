class CreatePayments < ActiveRecord::Migration[8.0]
  def change
    create_table :payments do |t|
      t.integer :order_id
      t.string :amount_decimal
      t.string :payment_method
      t.string :status

      t.timestamps
    end
  end
end
