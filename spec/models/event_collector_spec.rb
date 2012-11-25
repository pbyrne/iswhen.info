require "spec_helper"

describe EventCollector do
  context "#events" do
    let(:event) { FactoryGirl.create(:event) }
    let(:yesterday) { FactoryGirl.create(:yesterday) }
    let(:today) { FactoryGirl.create(:today) }
    let(:tomorrow) { FactoryGirl.create(:tomorrow) }

    it "returns events with upcoming observances" do
      event.observances << tomorrow

      subject.events.should include event
    end

    it "returns events with an observance today" do
      event.observances << today

      subject.events.should include event
    end

    it "does not return events without observances" do
      event.observances = []

      subject.events.should_not include event
    end

    it "does not return events with observances only in the past" do
      event.observances << yesterday

      subject.events.should_not include event
    end

    it "returns each event only once" do
      event.observances << today
      event.observances << tomorrow

      subject.events.should == [event]
    end
  end
end
