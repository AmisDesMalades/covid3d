class AddPublishedToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :license, :string
    add_column :projects, :website, :string
    add_column :projects, :author, :string
    add_column :projects, :author_url, :string
    add_column :projects, :published, :boolean
  end
end
