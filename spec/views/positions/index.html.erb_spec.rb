require 'spec_helper'

describe "positions/index" do
  before(:each) do
    assign(:positions, [
      stub_model(Position,
        :position_order => 1,
        :position_x => 2,
        :position_y => 3,
        :meaning_normal => "Meaning Normal",
        :meaning_reversed => "Meaning Reversed"
      ),
      stub_model(Position,
        :position_order => 1,
        :position_x => 2,
        :position_y => 3,
        :meaning_normal => "Meaning Normal",
        :meaning_reversed => "Meaning Reversed"
      )
    ])
  end

  it "renders a list of positions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Meaning Normal".to_s, :count => 2
    assert_select "tr>td", :text => "Meaning Reversed".to_s, :count => 2
  end
end
