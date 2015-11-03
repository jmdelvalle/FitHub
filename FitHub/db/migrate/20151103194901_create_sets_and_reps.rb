class CreateSetsAndReps < ActiveRecord::Migration
  def change
    create_table :sets_and_reps do |t|
      t.belongs_to :workout
      t.belongs_to :exercise
      t.string :sets
      t.string :reps
    end
  end
end
