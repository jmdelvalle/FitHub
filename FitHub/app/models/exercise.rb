class Exercise < ActiveRecord::Base
  # has_many :workout_exercises
  # has_many :workouts, through: :workout_exercises
  has_many :workouts_exercises
  has_many :workouts, through: :workouts_exercises
  has_many :sets_and_reps
end
