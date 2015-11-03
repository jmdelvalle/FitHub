class Workout < ActiveRecord::Base
 has_many :workouts_exercises
 has_many :exercises, through: :workouts_exercises
 has_many :users_workouts
 has_many :users, through: :users_workouts
 has_many :likes
 has_many :sets_and_reps


 def followed_workouts(user)
   UsersWorkout.where(:user_id => user.id, :workout_id => self.id).first
 end

 def self.search(search)
   amt_for_category_search = where('category LIKE ?', "%#{search}%").count
   amt_for_name_search = where('name LIKE ?', "%#{search}%").count
   amt_for_creator_search = where('creator like ?', "%#{search}%").count

   if amt_for_category_search > amt_for_name_search && amt_for_category_search > amt_for_creator_search
     where('category LIKE ?', "%#{search}%")
   elsif amt_for_name_search > amt_for_creator_search && amt_for_name_search > amt_for_category_search
     where('name LIKE ?', "%#{search}%")
   else amt_for_creator_search > amt_for_name_search && amt_for_creator_search > amt_for_category_search
     where('creator like ?', "%#{search}%")
   end
 end

end
