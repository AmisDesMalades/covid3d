class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :card_image_url
      t.string :large_image_url
      t.string :status

      t.timestamps
    end
  end
end
