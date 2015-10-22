require 'rails_helper'

RSpec.describe "workouts/new", type: :view do
  before(:each) do
    assign(:workout, Workout.new(
      :name => "MyString",
      :category => "MyString",
      :description => "MyText",
      :challenges => "MyText"
    ))
  end

  it "renders new workout form" do
    render

    assert_select "form[action=?][method=?]", workouts_path, "post" do

      assert_select "input#workout_name[name=?]", "workout[name]"

      assert_select "input#workout_category[name=?]", "workout[category]"

      assert_select "textarea#workout_description[name=?]", "workout[description]"

      assert_select "textarea#workout_challenges[name=?]", "workout[challenges]"
    end
  end
end
