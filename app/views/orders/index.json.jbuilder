json.array!(@orders) do |order|
  json.extract! order, :id, :school, :address, :city, :state, :zip, :phone_number, :desired_PD_dates
  json.url order_url(order, format: :json)
end
