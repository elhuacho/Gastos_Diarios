json.extract! gastos_diario, :id, :descripcion, :categoria, :monto, :created_at, :updated_at
json.url gastos_diario_url(gastos_diario, format: :json)