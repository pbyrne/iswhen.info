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

  context "#name" do
    it "display's the event's #longname attribute" do
      subject.name.should == event.longname
    end
  end

  context "#with_upcoming_observance" do
    it "yields the next-most upcoming ovservance, wraped in a decorator, if any" do
      subject.stub(:upcoming_observances) { [observance] }
      expect { |b| subject.with_upcoming_observance(&b) }.to yield_with_args(ObservanceDecorator)
    end

    it "does not yield if no upcoming observance" do
      subject.stub(:upcoming_observances) { [] }
      expect { |b| subject.with_upcoming_observance(&b) }.not_to yield_control
    end
  end
end
