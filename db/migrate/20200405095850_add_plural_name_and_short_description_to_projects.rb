class AddPluralNameAndShortDescriptionToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :plural_name, :string
    add_column :projects, :short_description, :string
    add_column :projects, :slug, :string
    change_column_default :projects, :status, from: nil, to: :working
    change_column_default :projects, :download_count, from: nil, to: 0
  end
end
