# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


JSON.load(File.read("#{Dir.pwd}/lib/assets/workout.json")).each do |exercise|
	
	exercise.each_pair do |name, details|
		case
			when details["Main Muscle Worked"] == " Middle Back" || details["Main Muscle Worked"] == " Lower Back" || details["Main Muscle Worked"] == " Lats" || details["Main Muscle Worked"] == " Traps" || details["Main Muscle Worked"] == " Neck"
				group = "Back"
			when details["Main Muscle Worked"] == " Chest"
				group = "Chest"
			when details["Main Muscle Worked"] == " Hamstrings" || details["Main Muscle Worked"] == " Adductors" || details["Main Muscle Worked"] == " Calves" || details["Main Muscle Worked"] == " Glutes" || details["Main Muscle Worked"] == " Abductors" || details["Main Muscle Worked"] == " Quadriceps"
				group = "Legs"
			when details["Main Muscle Worked"] == " Biceps" || details["Main Muscle Worked"] == " Triceps" || details["Main Muscle Worked"] == " Forearms"
				group = "Arms"
			when details["Main Muscle Worked"] == " Shoulders"
				group = "Shoulders"
			when details["Main Muscle Worked"] == " Abdominals"
				group = "Abs"
			end
			Exercise.create(:name => name, :specific_muscles_worked => details["Main Muscle Worked"], :guide => details["guide"].join, :muscle_group => group, :pic_left => details["pic_left"], :pic_right => details["pic_right"])
		end
end
