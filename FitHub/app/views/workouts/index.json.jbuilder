json.array!(@workouts) do |workout|
  json.extract! workout, :id, :name, :category, :description, :challenges
  json.url workout_url(workout, format: :json)
end
