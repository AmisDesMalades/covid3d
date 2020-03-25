json.extract! product, :id, :name, :type, :validated, :link, :img, :created_at, :updated_at
json.url product_url(product, format: :json)
