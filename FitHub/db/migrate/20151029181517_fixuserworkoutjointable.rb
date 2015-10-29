class Fixuserworkoutjointable < ActiveRecord::Migration
  def change
    drop_table :users_workouts
    create_table :users_workouts do |t|
      t.belongs_to :user
      t.belongs_to :workout
    end
  end
end
