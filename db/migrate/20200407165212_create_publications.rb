class CreatePublications < ActiveRecord::Migration[6.0]
  def change
    create_table :publications do |t|
      t.string :title
      t.date :date
      t.string :link
      t.text :comment

      t.timestamps
    end
  end
end
