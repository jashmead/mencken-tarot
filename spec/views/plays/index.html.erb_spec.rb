require 'spec_helper'

describe "plays/index" do
  before(:each) do
    assign(:plays, [
      stub_model(Play,
        :play_order => 1,
        :play_normal => false,
        :play_tags => "Play Tags",
        :play_text => "Play Text"
      ),
      stub_model(Play,
        :play_order => 1,
        :play_normal => false,
        :play_tags => "Play Tags",
        :play_text => "Play Text"
      )
    ])
  end

  it "renders a list of plays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Play Tags".to_s, :count => 2
    assert_select "tr>td", :text => "Play Text".to_s, :count => 2
  end
end
