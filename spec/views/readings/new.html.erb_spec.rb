require 'spec_helper'

describe "readings/new" do
  before(:each) do
    assign(:reading, stub_model(Reading,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new reading form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", readings_path, "post" do
      assert_select "input#reading_name[name=?]", "reading[name]"
      assert_select "input#reading_description[name=?]", "reading[description]"
    end
  end
end
