require 'spec_helper'

describe "readings/edit" do
  before(:each) do
    @reading = assign(:reading, stub_model(Reading,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit reading form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reading_path(@reading), "post" do
      assert_select "input#reading_name[name=?]", "reading[name]"
      assert_select "input#reading_description[name=?]", "reading[description]"
    end
  end
end
