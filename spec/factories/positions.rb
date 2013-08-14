# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :position do
    position_order 1
    position_x 1
    position_y 1
    meaning_normal "MyString"
    meaning_reversed "MyString"
  end
end
