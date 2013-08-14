require 'spec_helper'

describe "people/show" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "Name",
      :email => "Email",
      :about_me => "MyText",
      :deck_id => 1,
      :person_status => "Person Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Person Status/)
  end
end
