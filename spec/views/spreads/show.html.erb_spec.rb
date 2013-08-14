require 'spec_helper'

describe "spreads/show" do
  before(:each) do
    @spread = assign(:spread, stub_model(Spread,
      :name => "Name",
      :description => "Description",
      :master_spread => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/false/)
  end
end
