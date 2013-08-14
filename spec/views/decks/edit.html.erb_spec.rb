require 'spec_helper'

describe "decks/edit" do
  before(:each) do
    @deck = assign(:deck, stub_model(Deck,
      :name => "MyString",
      :summary => "MyString",
      :description => "MyText",
      :cloned_from_id => 1,
      :creator_id => 1,
      :deck_status => "MyString"
    ))
  end

  it "renders the edit deck form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", deck_path(@deck), "post" do
      assert_select "input#deck_name[name=?]", "deck[name]"
      assert_select "input#deck_summary[name=?]", "deck[summary]"
      assert_select "textarea#deck_description[name=?]", "deck[description]"
      assert_select "input#deck_cloned_from_id[name=?]", "deck[cloned_from_id]"
      assert_select "input#deck_creator_id[name=?]", "deck[creator_id]"
      assert_select "input#deck_deck_status[name=?]", "deck[deck_status]"
    end
  end
end
