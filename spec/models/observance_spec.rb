require 'spec_helper'

describe Observance do
  context "#valid?" do
    let(:observance) { FactoryGirl.build(:observance) }

    it "must have a start_on" do
      observance.start_on = Date.today
      observance.valid?
      observance.errors.should_not include :start_on

      observance.start_on = nil
      observance.valid?
      observance.errors.should include :start_on
    end
  end
end
