require "spec_helper"

describe ObservanceDecorator do
  let(:observance) { FactoryGirl.build(:tomorrow) }

  subject { ObservanceDecorator.new(observance) }

  context "#year" do
    it "is 'this year' for observances in the current year" do
      observance.start_on.stub(:year) { Date.today.year }
      subject.year.should == "this year"
    end

    it "is 'last year' for observances in the prior year" do
      observance.start_on.stub(:year) { Date.today.year - 1 }
      subject.year.should == "last year"
    end

    it "is 'next year' for observances next year" do
      observance.start_on.stub(:year) { Date.today.year + 1 }
      subject.year.should == "next year"
    end

    it "is the year for observances any other year" do
      observance.start_on.stub(:year) { Date.today.year + 100 }
      subject.year.should == observance.start_on.year.to_s
    end
  end

  context "#raw_year" do
    it "is the year the observance starts on" do
      subject.raw_year.should == observance.start_on.year
    end
  end

  context "#month" do
    it "is the name of the next observance's month" do
      subject.month.should == observance.start_on.strftime(ObservanceDecorator::MONTH_NAME)
    end
  end

  context "#day_of_week" do
    it "displays the full name of the day of the week of its next observance" do
      subject.day_of_week.should == observance.start_on.strftime(ObservanceDecorator::WEEKDAY_NAME)
    end
  end

  context "#day_of_month" do
    it "displays the day of the month of its next observance" do
      subject.day_of_month.should == observance.start_on.day.to_s
    end
  end
end
