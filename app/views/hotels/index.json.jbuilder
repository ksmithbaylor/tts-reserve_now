json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :city, :cost
  json.url hotel_url(hotel, format: :json)
end
