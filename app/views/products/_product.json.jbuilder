json.extract! product, :id, :image, :name, :description, :price, :year, :category_id, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
