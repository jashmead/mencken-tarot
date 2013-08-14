# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :card do
    name "MyString"
    major_arcana false
    suit "MyString"
    description "MyString"
    tags_plus "MyString"
    tags_minus "MyString"
    text_forward "MyString"
    text_reversed "MyString"
    deck_id 1
    card_image_upright ""
    card_image_reversed ""
    card_thumbnail ""
  end
end
