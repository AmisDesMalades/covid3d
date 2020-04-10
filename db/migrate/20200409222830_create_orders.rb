class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :hospital
      t.string :reference
      t.text :comment
      t.integer :status
      t.boolean :view_flag

      t.timestamps
    end
  end
end
