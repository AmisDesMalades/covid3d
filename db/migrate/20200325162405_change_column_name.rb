class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :type, :category
    rename_column :machines, :type, :category
    rename_column :suppliers, :type, :category
  end
end
