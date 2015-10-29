json.array!(@users_gyms) do |users_gym|
  json.extract! users_gym, :id
  json.url users_gym_url(users_gym, format: :json)
end
