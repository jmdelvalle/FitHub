require 'rails_helper'

RSpec.describe "workouts/edit", type: :view do
  before(:each) do
    @workout = assign(:workout, Workout.create!(
      :name => "MyString",
      :category => "MyString",
      :description => "MyText",
      :challenges => "MyText"
    ))
  end

  it "renders the edit workout form" do
    render

    assert_select "form[action=?][method=?]", workout_path(@workout), "post" do

      assert_select "input#workout_name[name=?]", "workout[name]"

      assert_select "input#workout_category[name=?]", "workout[category]"

      assert_select "textarea#workout_description[name=?]", "workout[description]"

      assert_select "textarea#workout_challenges[name=?]", "workout[challenges]"
    end
  end
end
