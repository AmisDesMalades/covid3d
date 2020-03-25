class AddLatLongToSuppliers < ActiveRecord::Migration[6.0]
  def change
    add_column :suppliers, :latitude, :float
    add_column :suppliers, :longitude, :float
  end
end
