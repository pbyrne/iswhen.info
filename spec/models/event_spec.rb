require 'spec_helper'

describe Event do
  it { should have_many(:observances) }

  context "#valid?" do
    # shortname
    it do
      Factory(:event) # making an event for the purposes of the uniqueness test
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

  context ".all_but(event)" do
    let!(:event1) { Factory(:event) }
    let!(:event2) { Factory(:event) }
    let!(:event3) { Factory(:event) }
    let!(:event4) { Factory(:event) }

    subject { Event.all_but(event1) }

    it "returns all events except the given" do
      subject.should == (Event.all - [event1])
    end
  end

  context ".with_subdomain(subdomain)" do
    let!(:event1) { Factory(:event) }
    let!(:event2) { Factory(:event) }

    subject { Event.with_subdomain(event1.shortname) }

    it "returns the events with the given short name" do
      subject.first.should == event1
    end
  end

  context "#to_param" do
    let(:event) { Factory(:event) }

    it "returns the shortname" do
      event.to_param.should == event.shortname
    end
  end

  context "#observances" do
    let!(:event) { Factory(:event)}
    let!(:obs1) { Factory(:observance, :event => event, :start_at => 1.day.ago) }
    let!(:obs2) { Factory(:observance, :event => event, :start_at => 1.month.from_now) } # newest
    let!(:obs3) { Factory(:observance, :event => event, :start_at => 1.month.ago) } # oldest

    subject { event.observances }

    it "returns in start_at order, ascending" do
      subject.first.should == obs3
      subject.second.should == obs1
      subject.last.should == obs2
    end
  end
end
