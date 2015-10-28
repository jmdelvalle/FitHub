require 'rails_helper'

RSpec.describe "gyms_users/show", type: :view do
  before(:each) do
    @gyms_user = assign(:gyms_user, GymsUser.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
