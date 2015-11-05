class CreateWeekdaysWorkouts < ActiveRecord::Migration
  def change
    create_table :weekdays_workouts do |t|
      t.belongs_to :weekday
      t.belongs_to :workout
    end
  end
end
