# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :play do
    play_order 1
    play_normal false
    play_tags "MyString"
    play_text "MyString"
  end
end
