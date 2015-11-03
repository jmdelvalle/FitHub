require 'rails_helper'

RSpec.describe "sets_and_reps/edit", type: :view do
  before(:each) do
    @sets_and_rep = assign(:sets_and_rep, SetsAndRep.create!())
  end

  it "renders the edit sets_and_rep form" do
    render

    assert_select "form[action=?][method=?]", sets_and_rep_path(@sets_and_rep), "post" do
    end
  end
end
