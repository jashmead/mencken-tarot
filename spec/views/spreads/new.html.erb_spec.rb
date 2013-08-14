require 'spec_helper'

describe "spreads/new" do
  before(:each) do
    assign(:spread, stub_model(Spread,
      :name => "MyString",
      :description => "MyString",
      :master_spread => false
    ).as_new_record)
  end

  it "renders new spread form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spreads_path, "post" do
      assert_select "input#spread_name[name=?]", "spread[name]"
      assert_select "input#spread_description[name=?]", "spread[description]"
      assert_select "input#spread_master_spread[name=?]", "spread[master_spread]"
    end
  end
end
