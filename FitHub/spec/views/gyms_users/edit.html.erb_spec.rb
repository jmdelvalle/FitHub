require 'rails_helper'

RSpec.describe "gyms_users/edit", type: :view do
  before(:each) do
    @gyms_user = assign(:gyms_user, GymsUser.create!())
  end

  it "renders the edit gyms_user form" do
    render

    assert_select "form[action=?][method=?]", gyms_user_path(@gyms_user), "post" do
    end
  end
end
