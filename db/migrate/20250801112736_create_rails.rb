class CreateRails < ActiveRecord::Migration[8.0]
  def change
    create_table :rails do |t|
      t.string :g
      t.string :controller

      t.timestamps
    end
  end
end
