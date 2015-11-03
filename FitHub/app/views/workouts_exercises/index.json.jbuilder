json.array!(@workouts_exercises) do |workouts_exercise|
  json.extract! workouts_exercise, :id
  json.url workouts_exercise_url(workouts_exercise, format: :json)
end
