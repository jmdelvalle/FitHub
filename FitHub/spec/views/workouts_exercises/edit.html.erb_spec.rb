require 'rails_helper'

RSpec.describe "workouts_exercises/edit", type: :view do
  before(:each) do
    @workouts_exercise = assign(:workouts_exercise, WorkoutsExercise.create!())
  end

  it "renders the edit workouts_exercise form" do
    render

    assert_select "form[action=?][method=?]", workouts_exercise_path(@workouts_exercise), "post" do
    end
  end
end
