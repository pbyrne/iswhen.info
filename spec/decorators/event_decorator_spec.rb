require "spec_helper"

describe EventDecorator do
  let(:event) { FactoryGirl.build(:event) }
  let(:observance) { FactoryGirl.build(:tomorrow) }

  subject { EventDecorator.new(event) }

  context "becoming familiar with decorators" do
    it "properly infers the decorator" do
      event.decorate.should be_decorated_with EventDecorator
    end

    it "properly decorates by hand" do
      EventDecorator.new(event).should be_decorated_with EventDecorator
    end
  end

  context "#has_future_observances?" do
    it "is true if the event has 2 or more upcoming observances" do
      event.stub(:upcoming_observances) { [stub, stub] }
      subject.should have_future_observances
    end

    it "is false if the event has 1 upcoming observance" do
      event.stub(:upcoming_observances) { [stub] }
      subject.should_not have_future_observances
    end

    it "is false if the event has no upcoming observances" do
      event.stub(:upcoming_observances) { [] }
      subject.should_not have_future_observances
    end
  end

  context "#year_string" do
    context "having a next observance" do
      before do
        event.stub(:next_observance) { observance }
      end

      it "is 'this year' for observances in the current year" do
        observance.start_on.stub(:year) { Date.today.year }
        subject.year_string.should == "this year"
      end

      it "is 'last year' for observances in the prior year" do
        observance.start_on.stub(:year) { Date.today.year - 1 }
        subject.year_string.should == "last year"
      end

      it "is 'next year' for observances next year" do
        observance.start_on.stub(:year) { Date.today.year + 1 }
        subject.year_string.should == "next year"
      end

      it "is the year for observances any other year" do
        observance.start_on.stub(:year) { Date.today.year + 100 }
        subject.year_string.should == observance.start_on.year.to_s
      end
    end

    it "is empty string if no next observance" do
      event.stub(:next_observance) { nil }
      subject.year_string.should == ""
    end
  end

  context "#day_of_week" do
    it "displays the full name of the day of the week of its next observance" do
      event.stub(:next_observance) { observance }
      subject.day_of_week.should == event.next_observance.start_on.strftime("%A")
    end

    it "properly handles an event with no next observance" do
      event.stub(:next_observance) { nil }
      subject.day_of_week.should == ""
    end
  end

  context "#name" do
    it "display's the event's #longname attribute" do
      subject.name.should == event.longname
    end
  end
end
