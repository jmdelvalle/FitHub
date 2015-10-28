json.array!(@gyms_users) do |gyms_user|
  json.extract! gyms_user, :id
  json.url gyms_user_url(gyms_user, format: :json)
end
