require 'rails_helper'

RSpec.describe "workouts_exercises/show", type: :view do
  before(:each) do
    @workouts_exercise = assign(:workouts_exercise, WorkoutsExercise.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
