require 'rails_helper'

RSpec.describe "gyms_users/index", type: :view do
  before(:each) do
    assign(:gyms_users, [
      GymsUser.create!(),
      GymsUser.create!()
    ])
  end

  it "renders a list of gyms_users" do
    render
  end
end
