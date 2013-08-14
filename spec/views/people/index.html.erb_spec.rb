require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :name => "Name",
        :email => "Email",
        :about_me => "MyText",
        :deck_id => 1,
        :person_status => "Person Status"
      ),
      stub_model(Person,
        :name => "Name",
        :email => "Email",
        :about_me => "MyText",
        :deck_id => 1,
        :person_status => "Person Status"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Person Status".to_s, :count => 2
  end
end
