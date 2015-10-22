require 'rails_helper'

RSpec.describe "workouts/index", type: :view do
  before(:each) do
    assign(:workouts, [
      Workout.create!(
        :name => "Name",
        :category => "Category",
        :description => "MyText",
        :challenges => "MyText"
      ),
      Workout.create!(
        :name => "Name",
        :category => "Category",
        :description => "MyText",
        :challenges => "MyText"
      )
    ])
  end

  it "renders a list of workouts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
