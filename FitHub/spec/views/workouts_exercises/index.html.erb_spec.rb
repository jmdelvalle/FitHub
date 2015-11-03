require 'rails_helper'

RSpec.describe "workouts_exercises/index", type: :view do
  before(:each) do
    assign(:workouts_exercises, [
      WorkoutsExercise.create!(),
      WorkoutsExercise.create!()
    ])
  end

  it "renders a list of workouts_exercises" do
    render
  end
end
