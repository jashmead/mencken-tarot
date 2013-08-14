require 'spec_helper'

describe "positions/show" do
  before(:each) do
    @position = assign(:position, stub_model(Position,
      :position_order => 1,
      :position_x => 2,
      :position_y => 3,
      :meaning_normal => "Meaning Normal",
      :meaning_reversed => "Meaning Reversed"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Meaning Normal/)
    rendered.should match(/Meaning Reversed/)
  end
end
