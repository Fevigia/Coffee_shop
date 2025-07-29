class CreateOrderitems < ActiveRecord::Migration[8.0]
  def change
    create_table :orderitems do |t|
      t.integer :menu_item_id
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
