require 'spec_helper'

describe Observance do
  context "#valid?" do
    let(:observance) { FactoryGirl.build(:observance) }

    it "must have a start_on" do
      observance.start_on = Date.today
      observance.valid?
      observance.errors[:start_on].should be_blank

      observance.start_on = nil
      observance.valid?
      observance.errors[:start_on].should_not be_blank
    end
  end
end
