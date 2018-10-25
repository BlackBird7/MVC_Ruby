json.extract! cliente, :id, :nombre_cliente, :rfc, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
