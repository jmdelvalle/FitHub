require 'rails_helper'

RSpec.describe "gyms/show", type: :view do
  before(:each) do
    @gym = assign(:gym, Gym.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
