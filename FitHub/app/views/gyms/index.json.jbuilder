json.array!(@gyms) do |gym|
  json.extract! gym, :id
  json.url gym_url(gym, format: :json)
end
