json.extract! project, :id, :name, :description, :status, :assembly, :url, :plural_name, :short_description, :description_html, :technology, :printer_settings, :comments, :created_at, :updated_at
json.url project_url(project, format: :json)
