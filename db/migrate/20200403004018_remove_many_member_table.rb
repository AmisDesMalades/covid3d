class RemoveManyMemberTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :members, :project_id
  end
end
