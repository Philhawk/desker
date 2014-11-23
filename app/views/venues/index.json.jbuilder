json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :location, :contact, :no_desks, :description
  json.url venue_url(venue, format: :json)
end
