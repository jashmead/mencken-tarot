require 'spec_helper'

describe "cards/show" do
  before(:each) do
    @card = assign(:card, stub_model(Card,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/false/)
    rendered.should match(/Suit/)
    rendered.should match(/Description/)
    rendered.should match(/Tags Plus/)
    rendered.should match(/Tags Minus/)
    rendered.should match(/Text Forward/)
    rendered.should match(/Text Reversed/)
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
