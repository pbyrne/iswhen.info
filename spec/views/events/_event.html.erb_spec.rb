require "spec_helper"

describe "events/_event.html.erb" do
  let(:event) { FactoryGirl.build(:event).decorate }

  before do
    assign(:event, event)
  end

  it "displays the long name of the event" do
    render
    rendered.should include event.name
  end

  it "displays the day of week it occurs"
  it "displays the date it occurs"
  it "displays the year it occurs"

  context "knowing future observances" do
    it "includes some details of the observance after the upcoming"
    it "says nothing if no event after the next"
  end
end
