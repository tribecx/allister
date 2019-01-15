json.extract! product, :id, :logo, :product_image, :name, :description, :link_pdf, :created_at, :updated_at
json.url product_url(product, format: :json)
