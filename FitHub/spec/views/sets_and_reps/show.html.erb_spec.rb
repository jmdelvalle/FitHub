require 'rails_helper'

RSpec.describe "sets_and_reps/show", type: :view do
  before(:each) do
    @sets_and_rep = assign(:sets_and_rep, SetsAndRep.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
