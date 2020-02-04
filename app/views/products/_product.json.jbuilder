json.extract! product, :id, :name, :valor_usd, :valor_cop, :impuesto, :seguro, :flete, :aduana, :total_envio_usd, :total_envio_cop, :accion, :bought, :valor_maximo_cop, :created_at, :updated_at
json.url product_url(product, format: :json)
