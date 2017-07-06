json.extract! order, :id, :user_id, :provider_id, :dateCreated, :finishDate, :cost, :address, :created_at, :updated_at
json.url order_url(order, format: :json)
