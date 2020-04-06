class AddCommentToMember < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :comment, :string
  end
end
