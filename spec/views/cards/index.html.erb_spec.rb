require 'spec_helper'

describe "cards/index" do
  before(:each) do
    assign(:cards, [
      stub_model(Card,
        :name => "Name",
        :major_arcana => false,
        :suit => "Suit",
        :description => "Description",
        :tags_plus => "Tags Plus",
        :tags_minus => "Tags Minus",
        :text_forward => "Text Forward",
        :text_reversed => "Text Reversed",
        :deck_id => 1,
        :card_image_upright => "",
        :card_image_reversed => "",
        :card_thumbnail => ""
      ),
      stub_model(Card,
        :name => "Name",
        :major_arcana => false,
        :suit => "Suit",
        :description => "Description",
        :tags_plus => "Tags Plus",
        :tags_minus => "Tags Minus",
        :text_forward => "Text Forward",
        :text_reversed => "Text Reversed",
        :deck_id => 1,
        :card_image_upright => "",
        :card_image_reversed => "",
        :card_thumbnail => ""
      )
    ])
  end

  it "renders a list of cards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Suit".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Tags Plus".to_s, :count => 2
    assert_select "tr>td", :text => "Tags Minus".to_s, :count => 2
    assert_select "tr>td", :text => "Text Forward".to_s, :count => 2
    assert_select "tr>td", :text => "Text Reversed".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # commenting out the three bytea tests
    # assert_select "tr>td", :text => "".to_s, :count => 2
    # assert_select "tr>td", :text => "".to_s, :count => 2
    # assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
