class AddBrandToMachines < ActiveRecord::Migration[6.0]
  def change
    add_column :machines, :brand, :string
  end
end
