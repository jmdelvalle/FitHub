require 'rails_helper'

RSpec.describe "users_workouts/edit", type: :view do
  before(:each) do
    @users_workout = assign(:users_workout, UsersWorkout.create!())
  end

  it "renders the edit users_workout form" do
    render

    assert_select "form[action=?][method=?]", users_workout_path(@users_workout), "post" do
    end
  end
end
