json.array!(@bookings) do |booking|
  json.extract! booking, :id, :school, :address, :city, :state, :zip, :phone_number, :desired_dates
  json.url booking_url(booking, format: :json)
end
