class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :location
      t.string :full_address
      t.string :phone
      t.string :type
      t.integer :production_capacity
      t.boolean :available

      t.timestamps
    end
  end
end
