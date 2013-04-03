require "spec_helper"

describe "events/_upcoming_events.html.haml" do
  let(:event) { FactoryGirl.build(:event) }
  let(:collection) { EventCollector.new.tap { |ec| ec.events = [event] } }

  before do
    assign(:collection, collection)
  end

  it "displays links to the events" do
    render

    rendered.should include link_to_event(event)
  end
end
