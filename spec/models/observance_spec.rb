require 'spec_helper'

describe Observance do
  context "#valid?" do
    let(:observance) { FactoryGirl.build(:observance) }

    it "must have a start_on" do
      observance.start_on = Date.current
      observance.valid?
      expect(observance.errors).to_not include :start_on

      observance.start_on = nil
      observance.valid?
      expect(observance.errors).to include :start_on
    end

    it "must end after it starts" do
      observance.end_on = nil
      observance.valid?
      expect(observance.errors).to_not include :end_on

      observance.end_on = observance.start_on
      observance.valid?
      expect(observance.errors).to include :end_on

      observance.end_on = observance.start_on + 1
      observance.valid?
      expect(observance.errors).to_not include :end_on
    end
  end

  context ".upcoming" do
    let!(:past) { FactoryGirl.create(:yesterday) }
    let!(:today) { FactoryGirl.create(:today) }
    let!(:tomorrow) { FactoryGirl.create(:tomorrow) }

    it "excludes observances from the past" do
      expect(Observance.upcoming).to_not include past
      expect(Observance.upcoming).to include today
      expect(Observance.upcoming).to include tomorrow
    end
  end

  context "#ends_before_it_begins?" do
    let(:observance) { FactoryGirl.build(:observance) }

    it "is false if has no end_on" do
      observance.end_on = nil
      expect(observance.ends_before_it_begins?).to be_false
    end

    it "is false if its end_on is after start_on" do
      observance.end_on = observance.start_on + 1
      expect(observance.ends_before_it_begins?).to be_false
    end

    it "is true if its end_on is identical to start_on" do
      observance.end_on = observance.start_on
      expect(observance.ends_before_it_begins?).to be_true
    end

    it "is true if its end_on is before start_on" do
      observance.end_on = observance.start_on - 1
      expect(observance.ends_before_it_begins?).to be_true
    end
  end
end
