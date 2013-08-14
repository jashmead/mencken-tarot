# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :deck do
    name "MyString"
    summary "MyString"
    description "MyText"
    cloned_from_id 1
    creator_id 1
    deck_status "MyString"
  end
end
