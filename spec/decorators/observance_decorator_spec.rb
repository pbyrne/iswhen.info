require "spec_helper"

describe ObservanceDecorator do
  let(:observance) { FactoryGirl.build(:tomorrow) }

  subject { ObservanceDecorator.new(observance) }

  context "#year" do
    it "is 'this year' for observances in the current year" do
      observance.start_on.stub(:year) { Date.today.year }
      expect(subject.year).to eq "this year"
    end

    it "is 'last year' for observances in the prior year" do
      observance.start_on.stub(:year) { Date.today.year - 1 }
      expect(subject.year).to eq "last year"
    end

    it "is 'next year' for observances next year" do
      observance.start_on.stub(:year) { Date.today.year + 1 }
      expect(subject.year).to eq "next year"
    end

    it "is the year for observances any other year" do
      observance.start_on.stub(:year) { Date.today.year + 100 }
      expect(subject.year).to eq observance.start_on.year.to_s
    end
  end

  context "#raw_year" do
    it "is the year the observance starts on" do
      expect(subject.raw_year).to eq observance.start_on.year
    end
  end

  context "#month" do
    it "is the name of the next observance's month" do
      expect(subject.month).to eq observance.start_on.strftime(ObservanceDecorator::MONTH_NAME)
    end
  end

  context "#day_of_week" do
    it "displays the full name of the day of the week of its next observance" do
      expect(subject.day_of_week).to eq observance.start_on.strftime(ObservanceDecorator::WEEKDAY_NAME)
    end
  end

  context "#day_of_month" do
    it "displays the day of the month of its next observance" do
      expect(subject.day_of_month).to eq observance.start_on.day.to_s
    end
  end
end
