require "spec_helper"

describe "events/_event.html.haml" do
  let(:event) { FactoryGirl.build(:event).decorate }
  let(:observance) { FactoryGirl.build(:tomorrow) }
  let(:decorated_observance) { observance.decorate }

  before do
    assign(:event, event)
  end

  it "displays the long name of the event" do
    render
    rendered.should include event.name
  end

  context "with an upcoming observance" do
    before do
      event.stub(:upcoming_observances) { [observance] }
    end

    it "displays the day of week it occurs" do
      render
      rendered.should include decorated_observance.day_of_week
    end

    it "displays the day of the month it occurs" do
      render
      rendered.should include decorated_observance.day_of_month
    end

    it "displays the month it occurs" do
      render
      rendered.should include decorated_observance.month
    end

    it "displays the year it occurs" do
      render
      rendered.should include decorated_observance.raw_year.to_s
      rendered.should include decorated_observance.year
    end
  end

  context "knowing future observances" do
    it "includes some details of the observance after the upcoming"
    it "says nothing if no event after the next"
  end
end
