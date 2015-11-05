class UsersWorkout < ActiveRecord::Base
  belongs_to :user
  belongs_to :workout

   def self.notexist?(user, workout)
     !UsersWorkout.exists?(:user_id => user.id, :workout_id => workout.id)
   end
end
