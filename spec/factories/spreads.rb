# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :spread do
    name "MyString"
    description "MyString"
    master_spread false
  end
end
