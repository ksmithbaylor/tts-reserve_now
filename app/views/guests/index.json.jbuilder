json.array!(@guests) do |guest|
  json.extract! guest, :id, :name, :country
  json.url guest_url(guest, format: :json)
end
