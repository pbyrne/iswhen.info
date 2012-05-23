require "spec_helper"

describe Catalog do
  context "#new(events)" do
    let(:event1) { stub }
    let(:event2) { stub }
    let(:event3) { stub }
    let(:events) { [event1, event2, event3] }

    it "keeps the events given to it" do
      catalog = Catalog.new(events)
      catalog.things.should == events
    end

    it "keeps the things given to it, without the one called out" do
      catalog = Catalog.new(events, event2)
      catalog.things.should == [event1, event3]
    end
  end

  context "#each" do
    let(:event1) { stub }
    let(:event2) { stub }
    let(:catalog) { Catalog.new([event1, event2])}

    it "iterates over the things" do
      event1.should_receive(:foo)
      event2.should_receive(:foo)

      catalog.each { |thing| thing.foo }
    end
  end
end
