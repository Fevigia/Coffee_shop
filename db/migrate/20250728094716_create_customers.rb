class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers do |t|
      t.integer :id
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
