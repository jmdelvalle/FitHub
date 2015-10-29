require 'rails_helper'

RSpec.describe "gyms/new", type: :view do
  before(:each) do
    assign(:gym, Gym.new())
  end

  it "renders new gym form" do
    render

    assert_select "form[action=?][method=?]", gyms_path, "post" do
    end
  end
end
