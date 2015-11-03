require 'rails_helper'

RSpec.describe "sets_and_reps/index", type: :view do
  before(:each) do
    assign(:sets_and_reps, [
      SetsAndRep.create!(),
      SetsAndRep.create!()
    ])
  end

  it "renders a list of sets_and_reps" do
    render
  end
end
