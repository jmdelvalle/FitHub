require 'rails_helper'

RSpec.describe "gyms_users/new", type: :view do
  before(:each) do
    assign(:gyms_user, GymsUser.new())
  end

  it "renders new gyms_user form" do
    render

    assert_select "form[action=?][method=?]", gyms_users_path, "post" do
    end
  end
end
