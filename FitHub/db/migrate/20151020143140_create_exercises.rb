class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle_group
      t.string :specific_muscles_worked
      t.text :guide
      t.belongs_to :workout


      t.timestamps null: false
    end
  end
end
