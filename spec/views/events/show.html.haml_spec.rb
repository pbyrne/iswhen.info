require 'spec_helper'

describe "events/show.html.haml" do
  let(:event) { FactoryGirl.build(:event).decorate }
  let(:observance) { FactoryGirl.build :tomorrow }

  before do
    assign(:collection, [])
    assign(:event, event)
    event.stub(:next_observance) { observance }
  end

  it "renders the selected event" do
    render

    expect(view).to render_template(partial: "_event")
  end

  it "renders the list of upcoming events" do
    render
    expect(view).to render_template(partial: "_upcoming_events")
  end
end
