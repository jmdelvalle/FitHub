json.array!(@weekdays_workouts) do |weekdays_workout|
  json.extract! weekdays_workout, :id
  json.url weekdays_workout_url(weekdays_workout, format: :json)
end
