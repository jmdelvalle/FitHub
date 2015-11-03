module ApplicationHelper
  def display_status(alert_type, flash_type)
    <<-eos
    <div class="container-fluid" id="medium_size">
      <div class="alert alert-#{alert_type}" role="alert">
        <p align="center">
          #{send(flash_type)}
        </p>
      </div>
    </div>
    eos
  end

  def able_to_join(user, workout)
    workout.user_id != user.id && UsersWorkout.notexist?(user, workout)
  end

  def able_to_like(user, workout)
    Like.where(:user_id => user.id,:workout_id => workout.id)
  end
end
