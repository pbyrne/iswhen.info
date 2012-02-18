# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    sequence(:name) { |n| "Some Event #{n}" }
    sequence(:shortname) { |n| "event#{n}" }
    sequence(:longname) { |n| "Some Spectacular Event" }

    factory :sundown_event do
      start_sundown true
    end

    factory :event_with_observances do
      after_create do |e|
        Factory(:observance, :event => e)
        Factory(:observance, :event => e)
      end
    end
  end
end
