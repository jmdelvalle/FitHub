json.array!(@users_workouts) do |users_workout|
  json.extract! users_workout, :id
  json.url users_workout_url(users_workout, format: :json)
end
