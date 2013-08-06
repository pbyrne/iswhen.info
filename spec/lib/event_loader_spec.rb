require "spec_helper"
require "event_loader"

describe EventLoader do
  let(:name) { "name" }
  let(:shortname) { "shortname" }
  let(:longname) { "longname" }
  let(:starts_sundown) { false }
  let(:event) { double(:event, id: 123) }

  subject { EventLoader.new(name, shortname, longname, starts_sundown) }

  context ".new(name, shortname, longname, starts_sundown)" do
    it "remembers the event's information" do
      loader = EventLoader.new name, shortname, longname, starts_sundown
      loader.name.should == name
      loader.shortname.should == shortname
      loader.longname.should == longname
      loader.starts_sundown.should == starts_sundown
    end

    it "accepts none of these attributes being given" do
      loader = EventLoader.new
      loader.name.should be_nil
      loader.shortname.should be_nil
      loader.longname.should be_nil
      loader.starts_sundown.should be_false
    end

    it "defaults starts_sundown as being false" do
      loader = EventLoader.new name, shortname, longname
      loader.starts_sundown.should be_false
    end
  end

  context "#event" do
    it "creates the event if none exists" do
      Event.should_receive(:create!).with(name: name, shortname: shortname, longname: longname, starts_sundown: starts_sundown) { event }
      subject.event.should == event
    end

    it "loads the existing event if one matches its values" do
      # already drop it into the database
      existing = Event.create!(name: name, shortname: shortname, longname: longname, starts_sundown: starts_sundown)
      subject.event.should == existing
    end

    it "remembers the given event" do
      subject.event = event
      Event.should_not_receive(:where)
      Event.should_not_receive(:create!)
      subject.event.should == event
    end
  end

  context "#add(start_on, end_on)" do
    let(:start_on) { Date.current }
    let(:end_on) { start_on + 1 }

    before do
      subject.event = event
    end

    it "creates a new observance with a start_on and end_on" do
      Observance.should_receive(:create!).with(event_id: event.id, start_on: start_on, end_on: end_on)
      subject.add start_on, end_on
    end

    it "creates a new observance with only a start_on" do
      Observance.should_receive(:create!).with(event_id: event.id, start_on: start_on, end_on: nil)
      subject.add start_on
    end
  end
end

