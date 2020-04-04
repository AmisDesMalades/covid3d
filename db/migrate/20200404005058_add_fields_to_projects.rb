class AddFieldsToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :download_count, :integer
    add_column :projects, :assembly, :string
  end
end
