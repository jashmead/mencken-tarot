require 'spec_helper'

describe "plays/show" do
  before(:each) do
    @play = assign(:play, stub_model(Play,
      :play_order => 1,
      :play_normal => false,
      :play_tags => "Play Tags",
      :play_text => "Play Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/Play Tags/)
    rendered.should match(/Play Text/)
  end
end
