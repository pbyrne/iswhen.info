# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    sequence(:name) { |n| "Some Event #{n}" }
    sequence(:shortname) { |n| "event#{n}" }
    sequence(:longname) { |n| "Some Spectacular Event" }

    factory :sundown_event do
      start_sundown true
    end
  end
end
