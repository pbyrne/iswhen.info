require "spec_helper"

describe "events/_event.html.erb" do
  let(:event) { FactoryGirl.build(:event) }

  it "displays the long name of the event"
  it "displays the day of week it occurs"
  it "displays the date it occurs"

  context "knowing future observances" do
    it "includes some details of the observance after the upcoming"
    it "says nothing if no event after the next"
  end
end
