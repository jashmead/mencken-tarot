require 'spec_helper'

describe "people/edit" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "MyString",
      :email => "MyString",
      :about_me => "MyText",
      :deck_id => 1,
      :person_status => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", person_path(@person), "post" do
      assert_select "input#person_name[name=?]", "person[name]"
      assert_select "input#person_email[name=?]", "person[email]"
      assert_select "textarea#person_about_me[name=?]", "person[about_me]"
      assert_select "input#person_deck_id[name=?]", "person[deck_id]"
      assert_select "input#person_person_status[name=?]", "person[person_status]"
    end
  end
end
