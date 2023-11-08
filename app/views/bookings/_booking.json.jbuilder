json.extract! booking, :id, :flight_id, :departure, :seats, :created_at, :updated_at
json.url booking_url(booking, format: :json)
