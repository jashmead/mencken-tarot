require 'spec_helper'

describe "decks/new" do
  before(:each) do
    assign(:deck, stub_model(Deck,
      :name => "MyString",
      :summary => "MyString",
      :description => "MyText",
      :cloned_from_id => 1,
      :person_id => 1,
      :deck_status => "MyString"
    ).as_new_record)
  end

  it "renders new deck form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", decks_path, "post" do
      assert_select "input#deck_name[name=?]", "deck[name]"
      assert_select "input#deck_summary[name=?]", "deck[summary]"
      assert_select "textarea#deck_description[name=?]", "deck[description]"
      assert_select "input#deck_cloned_from_id[name=?]", "deck[cloned_from_id]"
      assert_select "input#deck_person_id[name=?]", "deck[person_id]"
      assert_select "input#deck_deck_status[name=?]", "deck[deck_status]"
    end
  end
end
