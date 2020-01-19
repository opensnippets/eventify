json.extract! event, :id, :title, :description, :user_id, :event_date, :location, :contact_numbers, :created_at, :updated_at
json.url event_url(event, format: :json)
