json.array!(@desks) do |desk|
  json.extract! desk, :id, :title, :description, :price, :availability, :amenities, :desk_type, :thumbnail
  json.url desk_url(desk, format: :json)
end
