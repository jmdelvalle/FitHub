require 'rails_helper'

RSpec.describe "users_workouts/show", type: :view do
  before(:each) do
    @users_workout = assign(:users_workout, UsersWorkout.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
