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

  context ".order_by_upcoming" do
    let!(:event1) { Factory(:event) }
    let!(:event2) { Factory(:event) }
    let!(:event3) { Factory(:event) }
    let!(:first_observance) { Factory(:observance, :start_at => 1.month.from_now, :event => event2) }
    let!(:second_observance) { Factory(:observance, :start_at => 3.months.from_now, :event => event1) }
    let!(:past_observance) { Factory(:observance, :start_at => 1.year.ago, :event => event1) }

    subject { Event.order_by_upcoming }

    it "should order by the start_at for the observances" do
      subject.first.should == event2
      subject.last.should == event1
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

  context "#upcoming_observances" do
    let!(:event) { Factory(:event) }
    let!(:yesterday) { Factory(:observance, :event => event, :start_at => Date.yesterday) }
    let!(:today) { Factory(:observance, :event => event, :start_at => Date.today) }
    let!(:tomorrow) { Factory(:observance, :event => event, :start_at => Date.tomorrow) }

    subject { event.upcoming_observances }

    it "does not include events in the past" do
      subject.should_not include yesterday
    end

    it "includes events in the future" do
      subject.should include today
      subject.should include tomorrow
    end
  end
end
