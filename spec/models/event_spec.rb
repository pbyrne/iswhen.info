require 'spec_helper'

describe Event do
  context "#valid?" do
    let(:event) { FactoryGirl.build(:event) }

    context "on shortname" do
      let(:duplicate) { FactoryGirl.build(:event, shortname: event.shortname) }
      let(:unique) { FactoryGirl.build(:event, shortname: "somethingelseentirely") }

      it "must be unique" do
        event.save

        duplicate.valid?
        duplicate.errors.should include :shortname

        unique.valid?
        unique.errors.should_not include :shortname
      end

      it "must be a single word" do
        event.shortname = "foo"
        event.valid?
        event.errors.should_not include :shortname

        event.shortname = "this is not right"
        event.valid?
        event.errors.should include :shortname
      end

      it "cannot be blank" do
        event.shortname = "foo"
        event.valid?
        event.errors.should_not include :shortname

        event.shortname = nil
        event.valid?
        event.errors.should include :shortname
      end
    end

    context "on longname" do
      it "cannot be blank" do
        event.longname = "foo"
        event.valid?
        event.errors.should_not include :longname

        event.longname = nil
        event.valid?
        event.errors.should include :longname
      end
    end

    context "on name" do
      it "cannot be blank" do
        event.name = "Something"
        event.valid?
        event.errors.should_not include :name

        event.name = nil
        event.valid?
        event.errors.should include :name
      end
    end
  end

  context "#<=>" do
    let(:first) { FactoryGirl.build(:event) }
    let(:middle) { FactoryGirl.build(:event) }
    let(:last) { FactoryGirl.build(:event) }

    it "sorts by next_date" do
      first.stub(next_date: Date.yesterday)
      middle.stub(next_date: Date.current)
      last.stub(next_date: Date.tomorrow)

      [first, last, middle].sort.should == [first, middle, last]
    end
  end

  context "#observances" do
    let(:event) { FactoryGirl.create(:event) }
    let(:first) { FactoryGirl.build(:today) }
    let(:last) { FactoryGirl.build(:tomorrow) }

    it "sorts by start_on" do
      event.observances << last
      event.observances << first

      event.observances.should == [first, last]
    end
  end

  context "#upcoming_observances" do
    let(:event) { FactoryGirl.create(:event) }
    let(:past) { FactoryGirl.build(:yesterday) }
    let(:upcoming) { FactoryGirl.build(:today) }
    let(:future) { FactoryGirl.build(:tomorrow) }

    before do
      event.observances << upcoming
      event.observances << future
      event.observances << past
    end

    it "sorts by start_on" do
      event.upcoming_observances.first.should == upcoming
      event.upcoming_observances.last.should == future
    end

    it "does not include observances in the past" do
      event.upcoming_observances.should include upcoming
      event.upcoming_observances.should include future
      event.upcoming_observances.should_not include past
    end
  end

  context "#next_observance" do
    let(:event) { FactoryGirl.build(:event) }
    let(:upcoming) { double(:next_observance) }
    let(:future) { double(:future_observance) }

    before do
      event.stub(upcoming_observances: [upcoming, future])
    end

    it "returns the next upcoming observance" do
      event.next_observance.should == upcoming
    end
  end

  context "#observance_after" do
    let(:event) { FactoryGirl.build(:event) }
    let(:upcoming) { double(:next_observance) }
    let(:future) { double(:future_observance) }

    it "returns the observance after the next one" do
      event.stub(upcoming_observances: [upcoming, future])
      event.observance_after.should == future
    end

    it "returns nil if there is none" do
      event.stub(upcoming_observances: [upcoming])
      event.observance_after.should be_nil
    end
  end

  context "#next_date" do
    let(:event) { FactoryGirl.build(:event) }
    let(:observance) { FactoryGirl.build(:tomorrow) }

    it "is the start_on of the next upcoming observance" do
      event.stub(next_observance: observance)
      event.next_date.should == observance.start_on
    end

    it "is a far-future date if has no future observances" do
      event.stub(next_observance: nil)
      event.next_date.should == 100.years.from_now.to_date
    end
  end

  context "#to_s" do
    let(:event) { FactoryGirl.build(:event) }

    it "uses the long name" do
      event.to_s.should == event.longname
    end
  end

  context ".for_subdomain(subdomain)" do
    let(:event) { FactoryGirl.build(:event) }
    let(:subdomain) { "foo" }

    it "returns the event with the given short name" do
      Event.should_receive(:find_by_shortname).with(subdomain) { event }
      Event.for_subdomain(subdomain).should == event
    end

    it "raises an exception if none match" do
      Event.should_receive(:find_by_shortname).with(subdomain) { nil }
      expect { Event.for_subdomain(subdomain) }.to raise_error(Event::EventNotFound)
    end
  end
end
