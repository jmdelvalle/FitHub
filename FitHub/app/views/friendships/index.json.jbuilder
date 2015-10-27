json.array!(@friendships) do |friendship|
  json.extract! friendship, :id
  json.url friendship_url(friendship, format: :json)
end
