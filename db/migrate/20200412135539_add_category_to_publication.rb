class AddCategoryToPublication < ActiveRecord::Migration[6.0]
  def change
    add_column :publications, :category, :integer
  end
end
