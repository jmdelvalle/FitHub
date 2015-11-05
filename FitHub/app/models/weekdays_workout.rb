class WeekdaysWorkout < ActiveRecord::Base
  belongs_to :weekday
  belongs_to :workout
end
