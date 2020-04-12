class AddCategoryToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :category, :integer
  end
end
