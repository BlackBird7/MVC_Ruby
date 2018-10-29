json.extract! detalle_orden, :id, :canditdad, :precio_venta, :created_at, :updated_at
json.url detalle_orden_url(detalle_orden, format: :json)
