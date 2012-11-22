# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    shortname "MyString"
    longname "MyString"
    starts_sundown false
  end
end
