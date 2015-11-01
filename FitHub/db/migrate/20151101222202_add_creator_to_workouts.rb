class AddCreatorToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :creator, :string
  end
end
