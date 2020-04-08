class AddBooleanToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :fdm, :boolean
    add_column :projects, :advanced, :boolean
    add_column :projects, :cnc, :boolean
    add_column :projects, :lasercutter, :boolean
    add_column :projects, :electronics, :boolean
    add_column :projects, :silicone, :boolean
  end
end
