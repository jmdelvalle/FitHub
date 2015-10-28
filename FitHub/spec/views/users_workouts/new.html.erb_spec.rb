require 'rails_helper'

RSpec.describe "users_workouts/new", type: :view do
  before(:each) do
    assign(:users_workout, UsersWorkout.new())
  end

  it "renders new users_workout form" do
    render

    assert_select "form[action=?][method=?]", users_workouts_path, "post" do
    end
  end
end
