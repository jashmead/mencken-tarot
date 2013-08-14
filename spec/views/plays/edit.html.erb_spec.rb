require 'spec_helper'

describe "plays/edit" do
  before(:each) do
    @play = assign(:play, stub_model(Play,
      :play_order => 1,
      :play_normal => false,
      :play_tags => "MyString",
      :play_text => "MyString"
    ))
  end

  it "renders the edit play form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", play_path(@play), "post" do
      assert_select "input#play_play_order[name=?]", "play[play_order]"
      assert_select "input#play_play_normal[name=?]", "play[play_normal]"
      assert_select "input#play_play_tags[name=?]", "play[play_tags]"
      assert_select "input#play_play_text[name=?]", "play[play_text]"
    end
  end
end
