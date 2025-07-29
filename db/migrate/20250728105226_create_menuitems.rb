class CreateMenuitems < ActiveRecord::Migration[8.0]
  def change
    create_table :menuitems do |t|
      t.string :name
      t.text :description
      t.float :price
      t.boolean :available

      t.timestamps
    end
  end
end
