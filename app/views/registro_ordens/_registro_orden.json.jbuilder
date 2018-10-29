json.extract! registro_orden, :id, :numero_orden, :fecha, :created_at, :updated_at
json.url registro_orden_url(registro_orden, format: :json)
