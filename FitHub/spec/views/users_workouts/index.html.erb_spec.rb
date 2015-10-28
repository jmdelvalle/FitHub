require 'rails_helper'

RSpec.describe "users_workouts/index", type: :view do
  before(:each) do
    assign(:users_workouts, [
      UsersWorkout.create!(),
      UsersWorkout.create!()
    ])
  end

  it "renders a list of users_workouts" do
    render
  end
end
