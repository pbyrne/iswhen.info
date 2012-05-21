require 'spec_helper'

describe Event do
  it { should have_many(:observances) }

  context "#valid?" do
    # shortname
    it do
      create(:event) # making an event for the purposes of the uniqueness test
      should validate_uniqueness_of(:shortname)
    end
    it { should allow_value("event").for(:shortname) }
    it { should allow_value("event2").for(:shortname) }
    it { should_not allow_value("event something").for(:shortname) }

    # longname
    it { should validate_presence_of(:longname) }

    # name
    it { should validate_presence_of(:name) }
  end

  context ".with_subdomain(subdomain)" do
    let!(:event1) { create(:event) }
    let!(:event2) { create(:event) }

    subject { Event.with_subdomain(event1.shortname) }

    it "returns the events with the given short name" do
      subject.first.should == event1
    end
  end

  context "#to_param" do
    let(:event) { create(:event) }

    it "returns the shortname" do
      event.to_param.should == event.shortname
    end
  end

  context "#observances" do
    let!(:event) { create(:event)}
    let!(:obs1) { create(:observance, :event => event, :start_at => 1.day.ago) }
    let!(:obs2) { create(:observance, :event => event, :start_at => 1.month.from_now) } # newest
    let!(:obs3) { create(:observance, :event => event, :start_at => 1.month.ago) } # oldest

    subject { event.observances }

    it "returns in start_at order, ascending" do
      subject.first.should == obs3
      subject.second.should == obs1
      subject.last.should == obs2
    end
  end

  context "#upcoming_observances" do
    let!(:event) { create(:event) }
    let!(:yesterday) { create(:observance, :event => event, :start_at => Date.yesterday) }
    let!(:today) { create(:observance, :event => event, :start_at => Date.today) }
    let!(:tomorrow) { create(:observance, :event => event, :start_at => Date.tomorrow) }

    subject { event.upcoming_observances }

    it "does not include events in the past" do
      subject.should_not include yesterday
    end

    it "includes events in the future" do
      subject.should include today
      subject.should include tomorrow
    end
  end

  context ".with_observances" do
    let!(:event_without) { create(:event) }
    let!(:event_with1) { create(:event_with_observances) }
    let!(:event_with2) { create(:event_with_observances) }

    subject { Event.with_observances }

    it "does not return events without observances" do
      subject.should_not include event_without
    end

    it "returns events with observances" do
      subject.should include event_with1
      subject.should include event_with2
    end

    it "should not return duplicates" do
      # for some reason, fails expectation unless i call to_a (says it has 4 items)
      subject.to_a.should have(2).items
    end
  end
end
