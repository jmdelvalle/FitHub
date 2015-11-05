class Weekday < ActiveRecord::Base
  has_many :weekdays_workouts
  has_many :workouts, through: :weekdays_workouts
end
