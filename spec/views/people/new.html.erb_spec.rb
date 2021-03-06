require 'spec_helper'

describe "people/new" do
  before(:each) do
    assign(:person, stub_model(Person,
      :name => "MyString",
      :email => "MyString",
      :about_me => "MyText",
      :preferences => 1,
      :person_status => "MyString"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", people_path, "post" do
      assert_select "input#person_name[name=?]", "person[name]"
      assert_select "input#person_email[name=?]", "person[email]"
      assert_select "textarea#person_about_me[name=?]", "person[about_me]"
      assert_select "textarea#person_preferences[name=?]", "person[preferences]"
      assert_select "input#person_person_status[name=?]", "person[person_status]"
    end
  end
end
