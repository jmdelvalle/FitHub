require 'rails_helper'

RSpec.describe "workouts_exercises/new", type: :view do
  before(:each) do
    assign(:workouts_exercise, WorkoutsExercise.new())
  end

  it "renders new workouts_exercise form" do
    render

    assert_select "form[action=?][method=?]", workouts_exercises_path, "post" do
    end
  end
end
