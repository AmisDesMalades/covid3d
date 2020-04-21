class AddFeaturedToPublications < ActiveRecord::Migration[6.0]
  def change
    add_column :publications, :featured, :boolean, default: false
  end
end
