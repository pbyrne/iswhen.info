require "spec_helper"

describe "events/_event.html.erb" do
  let(:event) { FactoryGirl.build(:event).decorate }
  let(:observance) { FactoryGirl.build(:tomorrow) }

  before do
    event.stub(:next_observance) { observance }
    assign(:event, event)
  end

  it "displays the long name of the event" do
    render
    rendered.should include event.name
  end

  it "displays the day of week it occurs" do
    render
    rendered.should include event.day_of_week
  end

  it "displays the day of the month it occurs"
  it "displays the month it occurs" do
    render
    rendered.should include event.month
  end

  it "displays the year it occurs" do
    render
    rendered.should include event.year_string
    rendered.should include event.year.to_s
  end

  context "knowing future observances" do
    it "includes some details of the observance after the upcoming"
    it "says nothing if no event after the next"
  end
end
