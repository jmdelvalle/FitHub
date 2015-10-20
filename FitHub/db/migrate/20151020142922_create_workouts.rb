class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :category
      t.text :description
      t.text :challenges

      t.timestamps null: false
    end
  end
end
