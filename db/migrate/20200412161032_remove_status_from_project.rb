class RemoveStatusFromProject < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :status
    add_column :projects, :validation, :integer
  end
end
