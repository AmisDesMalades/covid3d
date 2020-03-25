class CreateMachines < ActiveRecord::Migration[6.0]
  def change
    create_table :machines do |t|
      t.string :name
      t.string :type
      t.string :advanced
      t.string :boolean

      t.timestamps
    end
  end
end
