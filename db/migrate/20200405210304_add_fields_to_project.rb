class AddFieldsToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :technology, :integer
    add_column :projects, :printer_settings, :text
    add_column :projects, :comments, :text
  end
end
