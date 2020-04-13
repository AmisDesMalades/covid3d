class AddPrintSettingsToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :material, :integer
    add_column :projects, :layer_size, :float
    add_column :projects, :fill_density, :integer
    add_column :projects, :support, :boolean
    add_column :projects, :raft, :boolean
    add_column :projects, :estimated_time, :integer
  end
end
