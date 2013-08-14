require 'spec_helper'

describe "positions/new" do
  before(:each) do
    assign(:position, stub_model(Position,
      :position_order => 1,
      :position_x => 1,
      :position_y => 1,
      :meaning_normal => "MyString",
      :meaning_reversed => "MyString"
    ).as_new_record)
  end

  it "renders new position form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", positions_path, "post" do
      assert_select "input#position_position_order[name=?]", "position[position_order]"
      assert_select "input#position_position_x[name=?]", "position[position_x]"
      assert_select "input#position_position_y[name=?]", "position[position_y]"
      assert_select "input#position_meaning_normal[name=?]", "position[meaning_normal]"
      assert_select "input#position_meaning_reversed[name=?]", "position[meaning_reversed]"
    end
  end
end
