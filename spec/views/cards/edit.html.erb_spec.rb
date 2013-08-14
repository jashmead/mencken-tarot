require 'spec_helper'

describe "cards/edit" do
  before(:each) do
    @card = assign(:card, stub_model(Card,
      :name => "MyString",
      :major_arcana => false,
      :suit => "MyString",
      :description => "MyString",
      :tags_plus => "MyString",
      :tags_minus => "MyString",
      :text_forward => "MyString",
      :text_reversed => "MyString",
      :deck_id => 1,
      :card_image_upright => "",
      :card_image_reversed => "",
      :card_thumbnail => ""
    ))
  end

  it "renders the edit card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", card_path(@card), "post" do
      assert_select "input#card_name[name=?]", "card[name]"
      assert_select "input#card_major_arcana[name=?]", "card[major_arcana]"
      assert_select "input#card_suit[name=?]", "card[suit]"
      assert_select "input#card_description[name=?]", "card[description]"
      assert_select "input#card_tags_plus[name=?]", "card[tags_plus]"
      assert_select "input#card_tags_minus[name=?]", "card[tags_minus]"
      assert_select "input#card_text_forward[name=?]", "card[text_forward]"
      assert_select "input#card_text_reversed[name=?]", "card[text_reversed]"
      assert_select "input#card_deck_id[name=?]", "card[deck_id]"
      assert_select "input#card_card_image_upright[name=?]", "card[card_image_upright]"
      assert_select "input#card_card_image_reversed[name=?]", "card[card_image_reversed]"
      assert_select "input#card_card_thumbnail[name=?]", "card[card_thumbnail]"
    end
  end
end
