class RemoveColumnFromProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :card_image_url
    remove_column :projects, :large_image_url
  end
end
