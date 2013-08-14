require 'spec_helper'

describe "spreads/index" do
  before(:each) do
    assign(:spreads, [
      stub_model(Spread,
        :name => "Name",
        :description => "Description",
        :master_spread => false
      ),
      stub_model(Spread,
        :name => "Name",
        :description => "Description",
        :master_spread => false
      )
    ])
  end

  it "renders a list of spreads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
