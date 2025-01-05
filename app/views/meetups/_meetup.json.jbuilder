json.extract! meetup, :id, :user_id, :name, :description, :address, :business_name, :event_date, :created_at, :updated_at
json.url meetup_url(meetup, format: :json)
json.description meetup.description.to_s
