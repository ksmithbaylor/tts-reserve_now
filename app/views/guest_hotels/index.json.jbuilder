json.array!(@guest_hotels) do |guest_hotel|
  json.extract! guest_hotel, :id, :guest_id, :hotel_id, :nights, :checkin_date, :checkout_date
  json.url guest_hotel_url(guest_hotel, format: :json)
end
