require "spec_helper"
require "event_loader"

describe EventLoader do
  context ".time_for(timestamp)" do
    it "returns the to-local version of the time, if given one" do
      sample = "2012-01-01 12:35:00"
      EventLoader.time_for(sample).should == sample.to_time(:local)
    end

    it "returns nil if not given a timestamp" do
      EventLoader.time_for(nil).should be_nil
    end

    it "returns nil if given a blank string" do
      EventLoader.time_for("").should be_nil
    end
  end

  context ".seed_event" do
    let(:shortname) { "short" }
    let(:name) { "name" }
    let(:longname) { "longname" }
    let(:starts_sundown) { true }
    let(:observance_details) { [only_start, start_and_end]}
    let(:only_start) { ["2011-04-01 05:00:00 UTC", ""] }
    let(:start_and_end) { ["2009-12-11 06:00:00 UTC", "2009-12-19 06:00:00 UTC"] }

    subject { EventLoader.create(name, shortname, longname, starts_sundown, observance_details) }

    it "creates the correct number of objects" do
      subject # to trigger creation

      Event.count.should == 1
      Observance.count.should == observance_details.count
    end

    it "creates the event with the correct attributes" do
      subject.name.should == name
      subject.shortname.should == shortname
      subject.longname.should == longname
      subject.starts_sundown.should == starts_sundown
    end

    it "creates the event with the right number of observances" do
      subject.observances.size.should == observance_details.size
    end

    it "creates the event with the correct observance details" do
      subject.observances.first.start_at.should == only_start.first.to_time(:local)
      subject.observances.first.end_at.should be_nil

      subject.observances.second.start_at.should == start_and_end.first.to_time(:local)
      subject.observances.second.end_at.should == start_and_end.second.to_time(:local)
    end
  end
end

