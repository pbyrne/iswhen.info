require 'spec_helper'

describe "events/index.html.haml" do
  before do
    assign(:collection, [])
  end

  it "includes some welcome copy" do
    render

    rendered.should include "Welcome"
    rendered.should include "Choose from these upcoming holidays and events"
  end

  it "renders the list of upcoming events" do
    render

    view.should render_template(partial: "_upcoming_events")
  end
end
