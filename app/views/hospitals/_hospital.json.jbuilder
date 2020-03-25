json.extract! hospital, :id, :name, :location, :full_address, :phone, :email, :administrative_contact_name, :administrative_contact_email, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
