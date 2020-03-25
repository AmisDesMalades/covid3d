class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :validated
      t.string :link
      t.string :img

      t.timestamps
    end
  end
end
