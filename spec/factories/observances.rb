# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :observance do
    start_on "2012-11-22"
  end

  factory :today, class: Observance do
    start_on Date.today
  end

  factory :tomorrow, class: Observance do
    start_on Date.tomorrow
  end

  factory :yesterday, class: Observance do
    start_on Date.yesterday
  end
end
