class CreateHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :location
      t.string :full_address
      t.string :phone
      t.string :email
      t.string :administrative_contact_name
      t.string :administrative_contact_email

      t.timestamps
    end
  end
end
