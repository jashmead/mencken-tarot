# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    name "MyString"
    email "MyString"
    about_me "MyText"
    deck_id 1
    person_status "MyString"
  end
end
