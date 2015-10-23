class CreateWorkoutExercises < ActiveRecord::Migration
  def change
    create_table :workout_exercises do |t|
      t.references :workout, index: true
      t.references :exercise, index: true

      t.timestamps null: false
    end
    add_foreign_key :workout_exercises, :workouts
    add_foreign_key :workout_exercises, :exercises
  end
end
