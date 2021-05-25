json.extract! job, :id, :user_id, :pickup_address, :lat1, :lon1, :dropoff_address, :lat2, :lon2, :getter_id, :created_at, :updated_at
json.url job_url(job, format: :json)
