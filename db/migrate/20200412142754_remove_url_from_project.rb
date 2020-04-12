class RemoveUrlFromProject < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :url
    remove_column :projects, :technology
  end
end
