# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "Christmas"
    shortname "christmas"
    longname "Christmas Day"
    starts_sundown false
  end
end
