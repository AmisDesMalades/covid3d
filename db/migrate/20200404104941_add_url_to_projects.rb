class AddUrlToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :url, :string
  end
end
