class CreateTableWorkoutsExercises < ActiveRecord::Migration
  def change
    create_table :workouts_exercises do |t|
      t.belongs_to :workout
      t.belongs_to :exercise
    end
  end
end
