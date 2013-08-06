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

  context "#sorted_events" do
    let(:result) { double(:array) }

    it "sorts the events" do
      subject.events.should_receive(:sort) { result }
      subject.sorted_events.should == result
    end
  end

  context "#each" do
    let(:event) { FactoryGirl.create(:event) }

    before do
      subject.should_receive(:sorted_events) { [event] }
    end

    it "iterates over the sorted events" do
      event.should_receive(:inspect)

      subject.each do |e|
        e.inspect
      end
    end
  end

  context ".except" do
    let!(:event) { FactoryGirl.create(:unique_upcoming_event) }
    let!(:another) { FactoryGirl.create(:unique_upcoming_event) }

    subject { EventCollector.except event }

    it "loads events except the given event" do
      subject.events.should include another
      subject.events.should_not include event
    end
  end
end
