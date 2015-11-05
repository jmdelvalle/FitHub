class RemoveDaysFromWorkout < ActiveRecord::Migration
  def change
    remove_column :workouts, :days
  end
end
