class Workout < ActiveRecord::Base
 has_many :exercises
 has_many :users_workouts
 has_many :users, through: :users_workouts

end
