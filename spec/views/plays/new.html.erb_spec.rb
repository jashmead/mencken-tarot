require 'spec_helper'

describe "plays/new" do
  before(:each) do
    assign(:play, stub_model(Play,
      :play_order => 1,
      :play_normal => false,
      :play_tags => "MyString",
      :play_text => "MyString"
    ).as_new_record)
  end

  it "renders new play form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plays_path, "post" do
      assert_select "input#play_play_order[name=?]", "play[play_order]"
      assert_select "input#play_play_normal[name=?]", "play[play_normal]"
      assert_select "input#play_play_tags[name=?]", "play[play_tags]"
      assert_select "input#play_play_text[name=?]", "play[play_text]"
    end
  end
end
