# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "Christmas"
    shortname "christmas"
    longname "Christmas Day"
    starts_sundown false
  end

  factory :unique_upcoming_event, class: Event do
    sequence :name do |n|
      "Event #{n}"
    end
    sequence :shortname do |n|
      "event#{n}"
    end
    sequence :longname do |n|
      "Event Sequence #{n}"
    end
    starts_sundown false

    after(:build) do |event|
      event.observances << FactoryGirl.build(:tomorrow)
    end
  end
end
