json.extract! publication, :id, :title, :date, :link, :comment, :created_at, :updated_at
json.url publication_url(publication, format: :json)
