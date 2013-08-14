require 'spec_helper'

describe "decks/index" do
  before(:each) do
    assign(:decks, [
      stub_model(Deck,
        :name => "Name",
        :summary => "Summary",
        :description => "MyText",
        :cloned_from_id => 1,
        :person_id => 2,
        :deck_status => "Deck Status"
      ),
      stub_model(Deck,
        :name => "Name",
        :summary => "Summary",
        :description => "MyText",
        :cloned_from_id => 1,
        :person_id => 2,
        :deck_status => "Deck Status"
      )
    ])
  end

  it "renders a list of decks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Deck Status".to_s, :count => 2
  end
end
