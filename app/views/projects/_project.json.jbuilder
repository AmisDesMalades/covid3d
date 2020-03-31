json.extract! project, :id, :name, :description, :card_image_url, :large_image_url, :status, :created_at, :updated_at
json.url project_url(project, format: :json)
