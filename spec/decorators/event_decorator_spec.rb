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
    pending
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
end
