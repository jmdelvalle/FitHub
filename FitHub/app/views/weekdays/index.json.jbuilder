json.array!(@weekdays) do |weekday|
  json.extract! weekday, :id
  json.url weekday_url(weekday, format: :json)
end
