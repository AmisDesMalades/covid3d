class CreateJoinTableMembersProjects < ActiveRecord::Migration[6.0]
  def change
    create_join_table :members, :projects do |t|
      t.index [:member_id, :project_id]
      t.index [:project_id, :member_id]
      t.boolean 
    end
  end
end
