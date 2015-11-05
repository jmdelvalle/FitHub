require 'rails_helper'

RSpec.describe "sets_and_reps/new", type: :view do
  before(:each) do
    assign(:sets_and_rep, SetsAndRep.new())
  end

  it "renders new sets_and_rep form" do
    render

    assert_select "form[action=?][method=?]", sets_and_reps_path, "post" do
    end
  end
end
