class Workout < ActiveRecord::Base
 has_many :exercises
 has_many :users_workouts
 has_many :users, through: :users_workouts

 def followed_workouts(user)
   UsersWorkout.where(:user_id => user.id, :workout_id => self.id).first
 end
end
