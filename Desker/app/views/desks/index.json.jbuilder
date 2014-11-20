json.array!(@desks) do |desk|
  json.extract! desk, :id, :name, :description, :price
  json.url desk_url(desk, format: :json)
end
