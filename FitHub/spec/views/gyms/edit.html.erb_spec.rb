require 'rails_helper'

RSpec.describe "gyms/edit", type: :view do
  before(:each) do
    @gym = assign(:gym, Gym.create!())
  end

  it "renders the edit gym form" do
    render

    assert_select "form[action=?][method=?]", gym_path(@gym), "post" do
    end
  end
end
