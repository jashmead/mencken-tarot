require 'spec_helper'

describe "decks/show" do
  before(:each) do
    @deck = assign(:deck, stub_model(Deck,
      :name => "Name",
      :summary => "Summary",
      :description => "MyText",
      :cloned_from_id => 1,
      :creator_id => 2,
      :deck_status => "Deck Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Summary/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Deck Status/)
  end
end
